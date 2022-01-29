///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Response_Error_Kind extends $pb.ProtobufEnum {
  static const Response_Error_Kind UNKNOWN = Response_Error_Kind._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'UNKNOWN');
  static const Response_Error_Kind MISSING_REQUEST_BODY = Response_Error_Kind._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'MISSING_REQUEST_BODY');
  static const Response_Error_Kind INVALID_FILE_PATH = Response_Error_Kind._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'INVALID_FILE_PATH');
  static const Response_Error_Kind FAILED_TO_LOAD_IMAGE = Response_Error_Kind._(
      3,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'FAILED_TO_LOAD_IMAGE');
  static const Response_Error_Kind JPEG_ENCODING_FAILED = Response_Error_Kind._(
      4,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'JPEG_ENCODING_FAILED');

  static const $core.List<Response_Error_Kind> values = <Response_Error_Kind>[
    UNKNOWN,
    MISSING_REQUEST_BODY,
    INVALID_FILE_PATH,
    FAILED_TO_LOAD_IMAGE,
    JPEG_ENCODING_FAILED,
  ];

  static final $core.Map<$core.int, Response_Error_Kind> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Response_Error_Kind? valueOf($core.int value) => _byValue[value];

  const Response_Error_Kind._($core.int v, $core.String n) : super(v, n);
}
