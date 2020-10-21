use std::ffi::CString;
use std::mem::ManuallyDrop;
use std::os::raw::c_char;
use std::path::PathBuf;

mod macros;
mod toolkit;

/// Create A Blurhash from the given image at `path`
/// ### Safety
/// this assumes that the given path is not null and the path exists and points to an image
/// otherwise this function will return null
/// the caller should call [`toolkit_string_free`] after getting the result
/// to free any allocated resources
#[no_mangle]
pub unsafe extern "C" fn toolkit_blurhash_encode(path: *const c_char) -> *const c_char {
    let path = cstr!(path);
    let path = PathBuf::from(path);
    let hash = unwrap_or_null!(toolkit::blurhash_encode(path));
    let val = CString::new(hash).expect("should never fails");
    let val = ManuallyDrop::new(val);
    val.as_ptr()
}

/// Calculates the image dimensions and returns "width*height" string
/// ### Safety
/// this assumes that the given path is not null and the path exists and points to an image
/// otherwise this function will return null
/// the caller should call [`toolkit_string_free`] after getting the result
/// to free any allocated resources
#[no_mangle]
pub unsafe extern "C" fn toolkit_image_dimensions(path: *const c_char) -> *const c_char {
    let path = cstr!(path);
    let path = PathBuf::from(path);
    let size = unwrap_or_null!(toolkit::image_dimensions(path));
    let val = CString::new(size).expect("should never fails");
    let val = ManuallyDrop::new(val);
    val.as_ptr()
}

/// Encode the image into jpeg and saves it to another place
/// ### Safety
/// this assumes that the given path is not null and the path exists and points to an image
/// otherwise this function will return zero
#[no_mangle]
pub unsafe extern "C" fn toolkit_encode_jpeg(
    in_path: *const c_char,
    out_path: *const c_char,
    quality: u8,
) -> OpStatusCode {
    let in_path = cstr!(in_path, OpStatusCode::BadPath);
    let out_path = cstr!(out_path, OpStatusCode::BadPath);
    let in_path = PathBuf::from(in_path);
    let out_path = PathBuf::from(out_path);
    match toolkit::encode_jpeg(in_path, out_path, quality) {
        Ok(_) => OpStatusCode::Ok,
        Err(e) => e,
    }
}

/// Free (Drop) a string value allocated by Rust.
/// ### Safety
/// this assumes that the given pointer is not null.
#[no_mangle]
pub unsafe extern "C" fn toolkit_string_free(ptr: *const c_char) {
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
pub unsafe extern "C" fn toolkit_link_me_please() {}

#[repr(C)]
#[derive(Eq, PartialEq)]
pub enum OpStatusCode {
    Ok = 1,
    BadPath = 2,
    OpenImageFailed = 3,
    LoadImageFailed = 4,
    JpegEncodeFailed = 5,
    ExifReadFailed = 6,
    JpegSaveFailed = 7,
    Unknown = 255,
}
