import 'dart:ffi';
import 'ffi.dart' as ffi;

/// `allo-isolate` Rust crate bindings.
class AlloIsolate {
  final ffi.RawMediaToolkit _dylib;

  AlloIsolate(DynamicLibrary lib) : _dylib = ffi.RawMediaToolkit(lib);

  void hook() {
    _dylib.store_dart_post_cobject(NativeApi.postCObject.cast());
  }
}
