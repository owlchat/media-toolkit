use image::GenericImageView;
use std::ffi::CString;
use std::mem::ManuallyDrop;
use std::os::raw::c_char;
use std::path::PathBuf;

mod macros;

/// Create A Blurhash from the given image at `path`
/// ### Safety
/// this assumes that the given path is not null and the path exists and points to an image
/// otherwise this function will return null
/// the caller should call [`blurhash_string_free`] after getting the result
/// to free any allocated resources
#[no_mangle]
pub unsafe extern "C" fn blurhash_encode(path: *const c_char) -> *const c_char {
    let path = cstr!(path);
    let path = PathBuf::from(path);
    let hash = unwrap_or_null!(encode_image(path));
    let val = CString::new(hash).expect("should never fails");
    let val = ManuallyDrop::new(val);
    val.as_ptr()
}

/// Calculates the image size and returns "width*height" string
/// ### Safety
/// this assumes that the given path is not null and the path exists and points to an image
/// otherwise this function will return null
/// the caller should call [`blurhash_string_free`] after getting the result
/// to free any allocated resources
#[no_mangle]
pub unsafe extern "C" fn blurhash_size(path: *const c_char) -> *const c_char {
    let path = cstr!(path);
    let path = PathBuf::from(path);
    let size = unwrap_or_null!(image_size(path));
    let val = CString::new(size).expect("should never fails");
    let val = ManuallyDrop::new(val);
    val.as_ptr()
}

/// Free (Drop) a string value allocated by Rust.
/// ### Safety
/// this assumes that the given pointer is not null.
#[no_mangle]
pub unsafe extern "C" fn blurhash_string_free(ptr: *const c_char) {
    if !ptr.is_null() {
        let val = CString::from_raw(ptr as _);
        drop(val)
    }
}

/// A Hack to force iOS To link to this lib
/// ### Safety
/// Don't call this nop function
#[no_mangle]
#[inline(never)]
pub unsafe extern "C" fn blurhash_link_me_please() {}

fn encode_image(path: PathBuf) -> Result<String, &'static str> {
    let t = std::thread::Builder::new().name(String::from("blurhash"));
    let t = t
        .spawn(|| {
            let img = image::open(path).map_err(|_| "failed to open the image")?;
            let (width, height) = img.dimensions();
            let rgb = img.to_rgba().into_raw();
            let blurhash = blurhash::encode(4, 3, width, height, &rgb);
            Ok(blurhash)
        })
        .map_err(|_| "spwan error")?;
    let result = t.join().map_err(|_| "join error")??;
    Ok(result)
}

fn image_size(path: PathBuf) -> Result<String, &'static str> {
    let t = std::thread::Builder::new().name(String::from("blurhash"));
    let t = t
        .spawn(|| {
            let img = image::open(path).map_err(|_| "failed to open the image")?;
            let (width, height) = img.dimensions();
            Ok((width, height))
        })
        .map_err(|_| "spwan error")?;
    let (width, height) = t.join().map_err(|_| "join error")??;
    Ok(format!("{}*{}", width, height))
}
