use exif::{In, Tag};
use image::{jpeg::JpegEncoder, DynamicImage, GenericImageView};
use std::path::PathBuf;

pub fn blurhash_encode(path: PathBuf) -> Result<String, &'static str> {
    let img = image::open(path).map_err(|_| "failed to open the image")?;
    let thumbnail = img.thumbnail(64, 64);
    let (width, height) = thumbnail.dimensions();
    let rgb = thumbnail.to_rgba8().into_raw();
    let blurhash = blurhash::encode(4, 3, width, height, &rgb);
    Ok(blurhash)
}

pub fn image_dimensions(path: PathBuf) -> Result<(u32, u32), &'static str> {
    image::image_dimensions(path).map_err(|_| "failed to open the image")
}

pub fn encode_jpeg(path: PathBuf, quality: u8) -> Result<Vec<u8>, &'static str> {
    let buf = std::fs::read(path).map_err(|_| "invalid path")?;
    let img = match bake_orientation(&buf) {
        Ok(Some(img)) => img,
        _ => image::load_from_memory(&buf).map_err(|_| "invalid image")?,
    };
    let mut out = Vec::new();
    let mut encoder = JpegEncoder::new_with_quality(&mut out, quality);
    encoder
        .encode_image(&img)
        .map_err(|_| "jpeg encoding failed")?;
    Ok(out)
}

#[repr(u8)]
#[derive(Eq, PartialEq)]
pub enum Orientation {
    /// The original pixel data matches the image's intended display orientation.
    Up = 1,
    /// The image has been horizontally flipped from the orientation of its original pixel data.
    UpMirrored = 2,
    /// The image has been rotated 180° from the orientation of its original pixel data.
    Down = 3,
    /// The image has been vertically flipped from the orientation of its original pixel data.
    DownMirrored = 4,
    /// The image has been rotated 90° counterclockwise from the orientation of its original pixel data.
    Left = 5,
    /// The image has been rotated 90° clockwise from the orientation of its original pixel data.
    Right = 6,
    /// The image has been rotated 90° clockwise and flipped horizontally from the orientation of its original pixel data.
    LeftMirrored = 7,
    /// The image has been rotated 90° counterclockwise and flipped horizontally from the orientation of its original pixel data.
    RightMirrored = 8,
}

impl From<u8> for Orientation {
    fn from(o: u8) -> Self {
        match o {
            1 => Self::Up,
            2 => Self::UpMirrored,
            3 => Self::Down,
            4 => Self::DownMirrored,
            5 => Self::Left,
            6 => Self::Right,
            7 => Self::LeftMirrored,
            8 => Self::RightMirrored,
            _ => Self::Up,
        }
    }
}

pub fn bake_orientation(buf: &[u8]) -> Result<Option<DynamicImage>, &'static str> {
    let mut io = std::io::Cursor::new(buf);
    let exifreader = exif::Reader::new();
    let exif = exifreader
        .read_from_container(&mut io)
        .map_err(|_| "exif reader failed")?;
    let orientation = if let Some(field) = exif.get_field(Tag::Orientation, In::PRIMARY) {
        let val = field.value.get_uint(0).unwrap_or(1);
        Orientation::from(val as u8)
    } else {
        Orientation::Up
    };
    if orientation == Orientation::Up {
        return Ok(None);
    }
    io.set_position(0);
    // Trying to fix orientation
    let img = image::load_from_memory(buf).map_err(|_| "failed to load the image")?;
    let img = match orientation {
        Orientation::Up => return Ok(None),
        Orientation::UpMirrored => img.fliph(),
        Orientation::Down => img.flipv().fliph(),
        Orientation::DownMirrored => img.rotate180().fliph(),
        Orientation::Left => img.rotate90().fliph(),
        Orientation::Right => img.rotate90(),
        Orientation::LeftMirrored => img.rotate270().fliph(),
        Orientation::RightMirrored => img.rotate270(),
    };
    Ok(Some(img))
}
