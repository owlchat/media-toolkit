import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart' as ffi;
import 'ffi.dart' as ffi;

class MediaToolkit {
  static ffi.RawMediaToolkit _raw = _load();

  String encodeBlurhash(String uri) {
    final result = _raw.toolkit_blurhash_encode(
      uri.toUtf8Pointer().cast(),
    );
    if (result != nullptr) {
      final hash = ffi.Utf8.fromUtf8(result.cast());
      return hash;
    } else {
      throw StateError('Failed to generate blurhash');
    }
  }

  Size calculateImageDimensions(String uri) {
    final result = _raw.toolkit_image_dimensions(
      uri.toUtf8Pointer().cast(),
    );
    if (result != nullptr) {
      final sizeStr = ffi.Utf8.fromUtf8(result.cast());
      final parts = sizeStr.split('*');
      return Size(double.parse(parts[0]), double.parse(parts[1]));
    } else {
      throw StateError('Failed to calculate image dimensions');
    }
  }

  void encodeJpeg(String original, String out, int quality) {
    final result = _raw.toolkit_encode_jpeg(
      original.toUtf8Pointer().cast(),
      out.toUtf8Pointer().cast(),
      quality,
    );
    if (result != 1) {
      throw StateError('Failed to encode the image as jpeg!');
    }
  }
}

class Size {
  const Size(this.width, this.height);

  final double width;
  final double height;
}

/// Loads the Blurhash [DynamicLibrary] depending on the [Platform].
ffi.RawMediaToolkit _load() {
  if (Platform.isAndroid) {
    return ffi.RawMediaToolkit(DynamicLibrary.open('libmedia_toolkit.so'));
  } else if (Platform.isIOS) {
    return ffi.RawMediaToolkit(DynamicLibrary.executable());
  } else {
    throw UnsupportedError('The Current Platform is not supported.');
  }
}

extension StringUtf8Pointer on String {
  Pointer<ffi.Utf8> toUtf8Pointer() {
    return ffi.Utf8.toUtf8(this);
  }
}
