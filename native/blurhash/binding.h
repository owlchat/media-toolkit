#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

// Create A Blurhash from the given image at `path`
// ### Safety
// this assumes that the given path is not null and the path exists and points to an image
// otherwise this function will return null
// the caller should call [`blurhash_string_free`] after getting the result
// to free any allocated resources
const char *blurhash_encode(const char *path);

// Calculates the image size and returns "width*height" string
// ### Safety
// this assumes that the given path is not null and the path exists and points to an image
// otherwise this function will return null
// the caller should call [`blurhash_string_free`] after getting the result
// to free any allocated resources
const char *blurhash_size(const char *path);

// Free (Drop) a string value allocated by Rust.
// ### Safety
// this assumes that the given pointer is not null.
void blurhash_string_free(const char *ptr);

// A Hack to force iOS To link to this lib
// ### Safety
// Don't call this nop function
void blurhash_link_me_please(void);
