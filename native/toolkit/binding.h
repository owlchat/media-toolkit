#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef enum OpStatusCode {
  Ok = 1,
  BadPath = 2,
  OpenImageFailed = 3,
  LoadImageFailed = 4,
  JpegEncodeFailed = 5,
  ExifReadFailed = 6,
  JpegSaveFailed = 7,
  Unknown = 255,
} OpStatusCode;

// Create A Blurhash from the given image at `path`
// ### Safety
// this assumes that the given path is not null and the path exists and points to an image
// otherwise this function will return null
// the caller should call [`toolkit_string_free`] after getting the result
// to free any allocated resources
const char *toolkit_blurhash_encode(const char *path);

// Calculates the image dimensions and returns "width*height" string
// ### Safety
// this assumes that the given path is not null and the path exists and points to an image
// otherwise this function will return null
// the caller should call [`toolkit_string_free`] after getting the result
// to free any allocated resources
const char *toolkit_image_dimensions(const char *path);

// Encode the image into jpeg and saves it to another place
// ### Safety
// this assumes that the given path is not null and the path exists and points to an image
// otherwise this function will return zero
OpStatusCode toolkit_encode_jpeg(const char *in_path, const char *out_path, uint8_t quality);

// Free (Drop) a string value allocated by Rust.
// ### Safety
// this assumes that the given pointer is not null.
void toolkit_string_free(const char *ptr);

// A Hack to force iOS To link to this lib
// ### Safety
// Don't call this nop function
void toolkit_link_me_please(void);
