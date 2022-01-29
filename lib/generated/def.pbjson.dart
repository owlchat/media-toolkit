///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use calculateBlurhashDescriptor instead')
const CalculateBlurhash$json = const {
  '1': 'CalculateBlurhash',
  '2': const [
    const {'1': 'image_path', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
  ],
};

/// Descriptor for `CalculateBlurhash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calculateBlurhashDescriptor = $convert.base64Decode(
    'ChFDYWxjdWxhdGVCbHVyaGFzaBIdCgppbWFnZV9wYXRoGAEgASgJUglpbWFnZVBhdGg=');
@$core.Deprecated('Use getImageDimensionsDescriptor instead')
const GetImageDimensions$json = const {
  '1': 'GetImageDimensions',
  '2': const [
    const {'1': 'image_path', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
  ],
};

/// Descriptor for `GetImageDimensions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getImageDimensionsDescriptor =
    $convert.base64Decode(
        'ChJHZXRJbWFnZURpbWVuc2lvbnMSHQoKaW1hZ2VfcGF0aBgBIAEoCVIJaW1hZ2VQYXRo');
@$core.Deprecated('Use encodeImageAsJpegDescriptor instead')
const EncodeImageAsJpeg$json = const {
  '1': 'EncodeImageAsJpeg',
  '2': const [
    const {'1': 'image_path', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
    const {'1': 'quality', '3': 2, '4': 1, '5': 13, '10': 'quality'},
  ],
};

/// Descriptor for `EncodeImageAsJpeg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encodeImageAsJpegDescriptor = $convert.base64Decode(
    'ChFFbmNvZGVJbWFnZUFzSnBlZxIdCgppbWFnZV9wYXRoGAEgASgJUglpbWFnZVBhdGgSGAoHcXVhbGl0eRgCIAEoDVIHcXVhbGl0eQ==');
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {
      '1': 'blurhash_encode',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.owlchat.CalculateBlurhash',
      '9': 0,
      '10': 'blurhashEncode'
    },
    const {
      '1': 'image_dimensions',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.owlchat.GetImageDimensions',
      '9': 0,
      '10': 'imageDimensions'
    },
    const {
      '1': 'image_encode',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.owlchat.EncodeImageAsJpeg',
      '9': 0,
      '10': 'imageEncode'
    },
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0EkUKD2JsdXJoYXNoX2VuY29kZRgBIAEoCzIaLm93bGNoYXQuQ2FsY3VsYXRlQmx1cmhhc2hIAFIOYmx1cmhhc2hFbmNvZGUSSAoQaW1hZ2VfZGltZW5zaW9ucxgCIAEoCzIbLm93bGNoYXQuR2V0SW1hZ2VEaW1lbnNpb25zSABSD2ltYWdlRGltZW5zaW9ucxI/CgxpbWFnZV9lbmNvZGUYAyABKAsyGi5vd2xjaGF0LkVuY29kZUltYWdlQXNKcGVnSABSC2ltYWdlRW5jb2RlQgYKBGJvZHk=');
@$core.Deprecated('Use blurhashDescriptor instead')
const Blurhash$json = const {
  '1': 'Blurhash',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `Blurhash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blurhashDescriptor =
    $convert.base64Decode('CghCbHVyaGFzaBIUCgV2YWx1ZRgBIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use imageDimensionsDescriptor instead')
const ImageDimensions$json = const {
  '1': 'ImageDimensions',
  '2': const [
    const {'1': 'width', '3': 1, '4': 1, '5': 13, '10': 'width'},
    const {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
  ],
};

/// Descriptor for `ImageDimensions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageDimensionsDescriptor = $convert.base64Decode(
    'Cg9JbWFnZURpbWVuc2lvbnMSFAoFd2lkdGgYASABKA1SBXdpZHRoEhYKBmhlaWdodBgCIAEoDVIGaGVpZ2h0');
@$core.Deprecated('Use jpegImageDescriptor instead')
const JpegImage$json = const {
  '1': 'JpegImage',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `JpegImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jpegImageDescriptor =
    $convert.base64Decode('CglKcGVnSW1hZ2USFAoFdmFsdWUYASABKAxSBXZhbHVl');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {
      '1': 'error',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.owlchat.Response.Error',
      '9': 0,
      '10': 'error'
    },
    const {
      '1': 'blurhash',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.owlchat.Blurhash',
      '9': 0,
      '10': 'blurhash'
    },
    const {
      '1': 'image_dimensions',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.owlchat.ImageDimensions',
      '9': 0,
      '10': 'imageDimensions'
    },
    const {
      '1': 'jpeg_image',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.owlchat.JpegImage',
      '9': 0,
      '10': 'jpegImage'
    },
  ],
  '3': const [Response_Error$json],
  '8': const [
    const {'1': 'body'},
  ],
};

@$core.Deprecated('Use responseDescriptor instead')
const Response_Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.owlchat.Response.Error.Kind',
      '10': 'kind'
    },
  ],
  '4': const [Response_Error_Kind$json],
};

@$core.Deprecated('Use responseDescriptor instead')
const Response_Error_Kind$json = const {
  '1': 'Kind',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'MISSING_REQUEST_BODY', '2': 1},
    const {'1': 'INVALID_FILE_PATH', '2': 2},
    const {'1': 'FAILED_TO_LOAD_IMAGE', '2': 3},
    const {'1': 'JPEG_ENCODING_FAILED', '2': 4},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIvCgVlcnJvchgBIAEoCzIXLm93bGNoYXQuUmVzcG9uc2UuRXJyb3JIAFIFZXJyb3ISLwoIYmx1cmhhc2gYAiABKAsyES5vd2xjaGF0LkJsdXJoYXNoSABSCGJsdXJoYXNoEkUKEGltYWdlX2RpbWVuc2lvbnMYAyABKAsyGC5vd2xjaGF0LkltYWdlRGltZW5zaW9uc0gAUg9pbWFnZURpbWVuc2lvbnMSMwoKanBlZ19pbWFnZRgEIAEoCzISLm93bGNoYXQuSnBlZ0ltYWdlSABSCWpwZWdJbWFnZRrNAQoFRXJyb3ISGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIwCgRraW5kGAIgASgOMhwub3dsY2hhdC5SZXNwb25zZS5FcnJvci5LaW5kUgRraW5kIngKBEtpbmQSCwoHVU5LTk9XThAAEhgKFE1JU1NJTkdfUkVRVUVTVF9CT0RZEAESFQoRSU5WQUxJRF9GSUxFX1BBVEgQAhIYChRGQUlMRURfVE9fTE9BRF9JTUFHRRADEhgKFEpQRUdfRU5DT0RJTkdfRkFJTEVEEARCBgoEYm9keQ==');
