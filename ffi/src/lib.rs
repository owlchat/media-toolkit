use crate::pb::response::{self, error};

mod pb;

#[repr(C)]
pub enum OwlchatResult {
    Ok = 1,
    NullPointerDetected = 2,
    InvalidProtobuf = 3,
}

/// This a Dart FFI interface to be called inside an Isolate.
///
/// Passing a Isolate Port, along with some Protobuf payload, to this function will
/// process the payload and return the result to the isolate over the port.
///
/// # Errors
///
/// This function will return an error if the provided payload is not valid.
///
/// # Safety
///
/// This function is unsafe because it deals with raw pointers.
#[cfg(feature = "dart-ffi")]
#[no_mangle]
pub unsafe extern "C" fn owlchat_media_toolkit_dispatch(
    port: i64,
    data: *const u8,
    len: usize,
) -> OwlchatResult {
    use allo_isolate::Isolate;
    use allo_isolate::ZeroCopyBuffer;
    use prost::Message;

    // check if the pointer is null first
    if data.is_null() {
        return OwlchatResult::NullPointerDetected;
    }
    // then read it as a slice
    let buf = std::slice::from_raw_parts(data, len);
    let isolate = Isolate::new(port);
    let req = match Message::decode(buf) {
        Ok(v) => v,
        Err(e) => {
            isolate.post(e.to_string());
            return OwlchatResult::InvalidProtobuf;
        }
    };
    let res = handle_request(req);
    let mut res_buf = Vec::with_capacity(res.encoded_len());
    res.encode(&mut res_buf).unwrap();
    isolate.post(ZeroCopyBuffer(res_buf));
    OwlchatResult::Ok
}

#[cfg(not(feature = "dart-ffi"))]
#[repr(C)]
pub struct Buffer {
    data: *mut u8,
    len: usize,
}

#[cfg(not(feature = "dart-ffi"))]
impl Default for Buffer {
    fn default() -> Self {
        Self {
            data: std::ptr::null_mut(),
            len: 0,
        }
    }
}

/// Main function to handle the request.
///
/// # Errors
///
/// This function will return null if the provided payload is not valid.
///
/// # Safety
/// you should free the returned buffer using [owlchat_media_toolkit_free_buffer] after you are done with it.
#[cfg(not(feature = "dart-ffi"))]
#[no_mangle]
pub unsafe extern "C" fn owlchat_media_toolkit_dispatch(
    data: *const u8,
    len: usize,
) -> *const Buffer {
    use prost::Message;
    // check if the pointer is null first
    if data.is_null() {
        return std::ptr::null();
    }
    // then read it as a slice
    let buf = std::slice::from_raw_parts(data, len);
    let req = match Message::decode(buf) {
        Ok(v) => v,
        Err(_) => {
            return Default::default();
        }
    };
    let res = handle_request(req);
    let mut res_buf = Vec::with_capacity(res.encoded_len());
    res.encode(&mut res_buf).unwrap();
    let mut boxed_buf = res_buf.into_boxed_slice();
    let data = boxed_buf.as_mut_ptr();
    let len = boxed_buf.len();
    std::mem::forget(boxed_buf);
    Box::leak(Box::new(Buffer { data, len }))
}

/// Free the buffer returned by [owlchat_media_toolkit_dispatch].
///
/// # Safety
///
/// This function is unsafe because it deals with raw pointers.
#[cfg(not(feature = "dart-ffi"))]
#[no_mangle]
pub unsafe extern "C" fn owlchat_media_toolkit_free_buffer(buffer: Box<Buffer>) {
    if buffer.data.is_null() {
        return;
    }
    let s = std::slice::from_raw_parts_mut(buffer.data, buffer.len);
    Box::from_raw(s.as_mut_ptr());
}

fn handle_request(req: pb::Request) -> pb::Response {
    use pb::request::Body as RequestBody;
    use pb::response::Body as ResponseBody;
    let body = match req.body {
        Some(body) => body,
        None => {
            return pb::Response {
                body: Some(ResponseBody::Error(response::Error {
                    kind: error::Kind::MissingRequestBody.into(),
                    message: "No request body found".to_string(),
                })),
            }
        }
    };

    let res_body = match body {
        RequestBody::BlurhashEncode(v) => {
            let p = std::path::PathBuf::from(v.image_path);
            match toolkit::blurhash_encode(p) {
                Ok(value) => ResponseBody::Blurhash(pb::Blurhash { value }),
                Err(e) => ResponseBody::Error(response::Error {
                    kind: error::Kind::InvalidFilePath.into(),
                    message: e.to_string(),
                }),
            }
        }
        RequestBody::ImageDimensions(v) => {
            let p = std::path::PathBuf::from(v.image_path);
            match toolkit::image_dimensions(p) {
                Ok((width, height)) => {
                    ResponseBody::ImageDimensions(pb::ImageDimensions { width, height })
                }
                Err(e) => ResponseBody::Error(response::Error {
                    kind: error::Kind::InvalidFilePath.into(),
                    message: e.to_string(),
                }),
            }
        }
        RequestBody::ImageEncode(v) => {
            let p = std::path::PathBuf::from(v.image_path);
            match toolkit::encode_jpeg(p, v.quality as _) {
                Ok(value) => ResponseBody::JpegImage(pb::JpegImage { value }),
                Err(e) => ResponseBody::Error(response::Error {
                    kind: error::Kind::JpegEncodingFailed.into(),
                    message: e.to_string(),
                }),
            }
        }
    };
    pb::Response {
        body: Some(res_body),
    }
}
