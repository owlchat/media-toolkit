import 'dart:ffi';
import 'package:ffi/ffi.dart' as ffi;

import 'dart:io';

class Blurhash {
  static DynamicLibrary _dl = _load();

  _dart_blurhash_encode _blurhashEncode;
  _dart_blurhash_string_free _blurhashStringFree;
  _dart_blurhash_size _blurhashSize;

  String encode(Uri uri) {
    _blurhashEncode ??=
        _dl.lookupFunction<_c_blurhash_encode, _dart_blurhash_encode>(
            'blurhash_encode');
    _blurhashStringFree ??=
        _dl.lookupFunction<_c_blurhash_string_free, _dart_blurhash_string_free>(
            'blurhash_string_free');
    final hashPtr = _blurhashEncode(uri.path.toUtf8Pointer());
    if (hashPtr != nullptr) {
      final hash = ffi.Utf8.fromUtf8(hashPtr);
      _blurhashStringFree(hashPtr);
      return hash;
    } else {
      throw StateError('Error while encoding image');
    }
  }

  Size imageSize(Uri uri) {
    _blurhashSize ??= _dl
        .lookupFunction<_c_blurhash_size, _dart_blurhash_size>('blurhash_size');
    _blurhashStringFree ??=
        _dl.lookupFunction<_c_blurhash_string_free, _dart_blurhash_string_free>(
            'blurhash_string_free');
    final sizePtr = _blurhashSize(uri.path.toUtf8Pointer());
    if (sizePtr != nullptr) {
      final sizeStr = ffi.Utf8.fromUtf8(sizePtr);
      final parts = sizeStr.split('*');
      _blurhashStringFree(sizePtr);
      return Size(double.parse(parts[0]), double.parse(parts[1]));
    } else {
      throw StateError('Error while getting image size');
    }
  }
}

class Size {
  const Size(this.width, this.height);
  final double width;
  final double height;
}

/// Loads the Blurhash [DynamicLibrary] depending on the [Platform].
DynamicLibrary _load() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('libblurhash.so');
  } else if (Platform.isIOS) {
    return DynamicLibrary.executable();
  } else {
    throw UnsupportedError('The Current Platform is not supported.');
  }
}

typedef _c_blurhash_encode = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> path,
);

typedef _dart_blurhash_encode = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> path,
);

typedef _c_blurhash_size = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> path,
);

typedef _dart_blurhash_size = Pointer<ffi.Utf8> Function(
  Pointer<ffi.Utf8> path,
);

typedef _c_blurhash_string_free = Void Function(
  Pointer<ffi.Utf8> path,
);

typedef _dart_blurhash_string_free = void Function(
  Pointer<ffi.Utf8> path,
);

extension StringUtf8Pointer on String {
  Pointer<ffi.Utf8> toUtf8Pointer() {
    return ffi.Utf8.toUtf8(this);
  }
}
