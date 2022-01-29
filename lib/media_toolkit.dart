import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'allo_isolate.dart';
import 'generated/def.pb.dart';
import 'utils.dart';
import 'ffi_ext.dart';

import 'ffi.dart' as ffi;

late final ffi.RawMediaToolkit _dylib = _load();

Future<String> blurhashEncode(Uri imagePath) async {
  final req = Request(
    blurhashEncode: CalculateBlurhash(imagePath: imagePath.toString()),
  );
  final res = await _dispatch(req);
  return res.ensureBlurhash().value;
}

@immutable
class Dimensions {
  final int width;
  final int height;

  const Dimensions(this.width, this.height);
}

Future<Dimensions> imageDimensions(Uri imagePath) async {
  final req = Request(
    imageDimensions: GetImageDimensions(imagePath: imagePath.toString()),
  );
  final res = await _dispatch(req);
  final dims = res.ensureImageDimensions();
  return Dimensions(dims.width, dims.height);
}

Future<Uint8List> jpegEncode(Uri imagePath) async {
  final req = Request(
    imageEncode: EncodeImageAsJpeg(imagePath: imagePath.toString()),
  );
  final res = await _dispatch(req);
  final bytes = res.ensureJpegImage().value;
  return Uint8List.fromList(bytes);
}

Future<Response> _dispatch(Request req) async {
  final completer = Completer<Uint8List>();
  final port = singleCompletePort(completer);
  final buffer = req.writeToBuffer();
  final data = buffer.asPtr();
  final len = buffer.length;
  final result = _dylib.owlchat_media_toolkit_dispatch(
    port.nativePort,
    data,
    len,
  );
  _assertOk(result);
  final resBytes = await completer.future;
  final res = Response.fromBuffer(resBytes);
  data.free();
  if (res.hasError()) {
    throw res.error;
  }
  return res;
}

void _assertOk(int result) {
  if (result != ffi.OwlchatResult.OwlchatResult_Ok) {
    throw Exception('Owlchat MediaToolkit Error: $result');
  } else if (result == ffi.OwlchatResult.OwlchatResult_NullPointerDetected) {
    throw ArgumentError.notNull('data');
  } else if (result == ffi.OwlchatResult.OwlchatResult_InvalidProtobuf) {
    throw ArgumentError.value('<...>', 'protobuf', 'Invalid Protobuf data');
  }
}

/// Loads the Owlchat [DynamicLibrary] depending on the [Platform]
/// and creates new [ffi.RawMediaToolkit].
///
/// This will also Hook up the allo-isolate rust crate.
ffi.RawMediaToolkit _load() {
  late final DynamicLibrary lib;
  // Load the library depending on the platform
  // Supported platforms:
  // * Linux
  // * MacOS
  // * Windows
  // * Android
  // * iOS
  // * Fuchsia
  if (Platform.isLinux) {
    lib = DynamicLibrary.open('target/debug/libowlchat_media_toolkit.so');
  } else if (Platform.isMacOS) {
    lib = DynamicLibrary.open('target/debug/libowlchat_media_toolkit.dylib');
  } else if (Platform.isWindows) {
    lib = DynamicLibrary.open('target/debug/owlchat_media_toolkit.dll');
  } else if (Platform.isAndroid) {
    lib = DynamicLibrary.open('libowlchat_media_toolkit.so');
  } else if (Platform.isIOS) {
    lib = DynamicLibrary.executable();
  } else if (Platform.isFuchsia) {
    lib = DynamicLibrary.open('target/libowlchat_media_toolkit.so');
  } else {
    throw UnsupportedError(
      'Platform ${Platform.operatingSystem} is not supported',
    );
  }
  // then hook up the allo-isolate rust crate
  // this is needed to be able to use the rust-ffi
  AlloIsolate(lib).hook();
  // finally create the ffi.RawOwlchatCrypto
  return ffi.RawMediaToolkit(lib);
}
