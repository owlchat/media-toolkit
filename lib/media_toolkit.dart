import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'ffi.dart' as ffi;

class MediaToolkit {
  static ffi.RawMediaToolkit _raw = _load();

  String encodeBlurhash(String uri) {
    final result = _raw.toolkit_blurhash_encode(uri.toNativeUtf8().cast());
    if (result != nullptr) {
      final hash = result.cast<Utf8>().toDartString();
      return hash;
    } else {
      throw StateError('Failed to generate blurhash');
    }
  }

  Size calculateImageDimensions(String uri) {
    final result = _raw.toolkit_image_dimensions(
      uri.toNativeUtf8().cast(),
    );
    if (result != nullptr) {
      final sizeStr = result.cast<Utf8>().toDartString();
      final parts = sizeStr.split('*');
      return Size(double.parse(parts[0]), double.parse(parts[1]));
    } else {
      throw StateError('Failed to calculate image dimensions');
    }
  }

  void encodeJpeg(String original, String out, int quality) {
    final result = _raw.toolkit_encode_jpeg(
      original.toNativeUtf8().cast(),
      out.toNativeUtf8().cast(),
      quality,
    );
    _assertOk(result);
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

void _assertOk(int status) {
  if (status != ffi.OpStatusCode.Ok) {
    throw StateError(_operationStatusCodeToErrorMessage(status));
  }
}

String _operationStatusCodeToErrorMessage(int status) {
  switch (status) {
    case ffi.OpStatusCode.BadPath:
      return 'Bad Path Provided (status: $status).';
    case ffi.OpStatusCode.JpegEncodeFailed:
      return 'Failed to encode Jpeg (status: $status)';
    case ffi.OpStatusCode.ExifReadFailed:
      return 'Failed to Read/Parse EXIF from the Image (status: $status)';
    case ffi.OpStatusCode.JpegSaveFailed:
      return 'Failed to save Jpeg to the file (status: $status)';
    case ffi.OpStatusCode.LoadImageFailed:
      return 'Failed to load the image into memory (status: $status)';
    case ffi.OpStatusCode.OpenImageFailed:
      return 'Failed to open the image (status: $status)';
    case ffi.OpStatusCode.Unknown:
    default:
      return 'Unknonw Status Code: $status';
  }
}
