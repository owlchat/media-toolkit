// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Owlchat Media Toolkit Binding
class RawMediaToolkit {
  /// Holds the Dynamic library.
  final ffi.DynamicLibrary _dylib;

  /// The symbols are looked up in [dynamicLibrary].
  RawMediaToolkit(ffi.DynamicLibrary dynamicLibrary) : _dylib = dynamicLibrary;

  /// // Create A Blurhash from the given image at `path`
  /// // ### Safety
  /// // this assumes that the given path is not null and the path exists and points to an image
  /// // otherwise this function will return null
  /// // the caller should call [`toolkit_string_free`] after getting the result
  /// // to free any allocated resources
  ffi.Pointer<ffi.Int8> toolkit_blurhash_encode(
    ffi.Pointer<ffi.Int8> path,
  ) {
    _toolkit_blurhash_encode ??= _dylib.lookupFunction<
        _c_toolkit_blurhash_encode,
        _dart_toolkit_blurhash_encode>('toolkit_blurhash_encode');
    return _toolkit_blurhash_encode(
      path,
    );
  }

  _dart_toolkit_blurhash_encode _toolkit_blurhash_encode;

  /// // Calculates the image dimensions and returns "width*height" string
  /// // ### Safety
  /// // this assumes that the given path is not null and the path exists and points to an image
  /// // otherwise this function will return null
  /// // the caller should call [`toolkit_string_free`] after getting the result
  /// // to free any allocated resources
  ffi.Pointer<ffi.Int8> toolkit_image_dimensions(
    ffi.Pointer<ffi.Int8> path,
  ) {
    _toolkit_image_dimensions ??= _dylib.lookupFunction<
        _c_toolkit_image_dimensions,
        _dart_toolkit_image_dimensions>('toolkit_image_dimensions');
    return _toolkit_image_dimensions(
      path,
    );
  }

  _dart_toolkit_image_dimensions _toolkit_image_dimensions;

  /// // Encode the image into jpeg and saves it to another place
  /// // ### Safety
  /// // this assumes that the given path is not null and the path exists and points to an image
  /// // otherwise this function will return zero
  int toolkit_encode_jpeg(
    ffi.Pointer<ffi.Int8> in_path,
    ffi.Pointer<ffi.Int8> out_path,
    int quality,
  ) {
    _toolkit_encode_jpeg ??= _dylib.lookupFunction<_c_toolkit_encode_jpeg,
        _dart_toolkit_encode_jpeg>('toolkit_encode_jpeg');
    return _toolkit_encode_jpeg(
      in_path,
      out_path,
      quality,
    );
  }

  _dart_toolkit_encode_jpeg _toolkit_encode_jpeg;

  /// // Free (Drop) a string value allocated by Rust.
  /// // ### Safety
  /// // this assumes that the given pointer is not null.
  void toolkit_string_free(
    ffi.Pointer<ffi.Int8> ptr,
  ) {
    _toolkit_string_free ??= _dylib.lookupFunction<_c_toolkit_string_free,
        _dart_toolkit_string_free>('toolkit_string_free');
    return _toolkit_string_free(
      ptr,
    );
  }

  _dart_toolkit_string_free _toolkit_string_free;

  /// // A Hack to force iOS To link to this lib
  /// // ### Safety
  /// // Don't call this nop function
  void blurhash_link_me_please() {
    _blurhash_link_me_please ??= _dylib.lookupFunction<
        _c_blurhash_link_me_please,
        _dart_blurhash_link_me_please>('blurhash_link_me_please');
    return _blurhash_link_me_please();
  }

  _dart_blurhash_link_me_please _blurhash_link_me_please;
}

typedef _c_toolkit_blurhash_encode = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> path,
);

typedef _dart_toolkit_blurhash_encode = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> path,
);

typedef _c_toolkit_image_dimensions = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> path,
);

typedef _dart_toolkit_image_dimensions = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<ffi.Int8> path,
);

typedef _c_toolkit_encode_jpeg = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> in_path,
  ffi.Pointer<ffi.Int8> out_path,
  ffi.Uint8 quality,
);

typedef _dart_toolkit_encode_jpeg = int Function(
  ffi.Pointer<ffi.Int8> in_path,
  ffi.Pointer<ffi.Int8> out_path,
  int quality,
);

typedef _c_toolkit_string_free = ffi.Void Function(
  ffi.Pointer<ffi.Int8> ptr,
);

typedef _dart_toolkit_string_free = void Function(
  ffi.Pointer<ffi.Int8> ptr,
);

typedef _c_blurhash_link_me_please = ffi.Void Function();

typedef _dart_blurhash_link_me_please = void Function();