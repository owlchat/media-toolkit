use image::jpeg::JpegEncoder;
use image::GenericImageView;
use std::path::PathBuf;

pub(crate) fn blurhash_encode(path: PathBuf) -> Result<String, &'static str> {
    let img = image::open(path).map_err(|_| "failed to open the image")?;
    let (width, height) = img.dimensions();
    let rgb = img.to_rgba().into_raw();
    let blurhash = blurhash::encode(4, 3, width, height, &rgb);
    Ok(blurhash)
}

pub(crate) fn image_dimensions(path: PathBuf) -> Result<String, &'static str> {
    let (width, height) = image::image_dimensions(path).map_err(|_| "failed to open the image")?;
    Ok(format!("{}*{}", width, height))
}

pub(crate) fn encode_jpeg(
    path: PathBuf,
    out_path: PathBuf,
    quality: u8,
) -> Result<(), &'static str> {
    let img = image::open(&path).map_err(|_| "failed to open the image")?;
    let mut out = Vec::new();
    let mut encoder = JpegEncoder::new_with_quality(&mut out, quality);
    encoder
        .encode_image(&img)
        .map_err(|_| "failed to encode the image")?;
    std::fs::write(out_path, out).map_err(|_| "failed to save the image")?;
    Ok(())
}
