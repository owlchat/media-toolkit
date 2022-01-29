///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'def.pbenum.dart';

export 'def.pbenum.dart';

class CalculateBlurhash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CalculateBlurhash',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imagePath')
    ..hasRequiredFields = false;

  CalculateBlurhash._() : super();
  factory CalculateBlurhash({
    $core.String? imagePath,
  }) {
    final _result = create();
    if (imagePath != null) {
      _result.imagePath = imagePath;
    }
    return _result;
  }
  factory CalculateBlurhash.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CalculateBlurhash.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CalculateBlurhash clone() => CalculateBlurhash()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CalculateBlurhash copyWith(void Function(CalculateBlurhash) updates) =>
      super.copyWith((message) => updates(message as CalculateBlurhash))
          as CalculateBlurhash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CalculateBlurhash create() => CalculateBlurhash._();
  CalculateBlurhash createEmptyInstance() => create();
  static $pb.PbList<CalculateBlurhash> createRepeated() =>
      $pb.PbList<CalculateBlurhash>();
  @$core.pragma('dart2js:noInline')
  static CalculateBlurhash getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CalculateBlurhash>(create);
  static CalculateBlurhash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);
}

class GetImageDimensions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetImageDimensions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imagePath')
    ..hasRequiredFields = false;

  GetImageDimensions._() : super();
  factory GetImageDimensions({
    $core.String? imagePath,
  }) {
    final _result = create();
    if (imagePath != null) {
      _result.imagePath = imagePath;
    }
    return _result;
  }
  factory GetImageDimensions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetImageDimensions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetImageDimensions clone() => GetImageDimensions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetImageDimensions copyWith(void Function(GetImageDimensions) updates) =>
      super.copyWith((message) => updates(message as GetImageDimensions))
          as GetImageDimensions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetImageDimensions create() => GetImageDimensions._();
  GetImageDimensions createEmptyInstance() => create();
  static $pb.PbList<GetImageDimensions> createRepeated() =>
      $pb.PbList<GetImageDimensions>();
  @$core.pragma('dart2js:noInline')
  static GetImageDimensions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetImageDimensions>(create);
  static GetImageDimensions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);
}

class EncodeImageAsJpeg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'EncodeImageAsJpeg',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imagePath')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'quality',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  EncodeImageAsJpeg._() : super();
  factory EncodeImageAsJpeg({
    $core.String? imagePath,
    $core.int? quality,
  }) {
    final _result = create();
    if (imagePath != null) {
      _result.imagePath = imagePath;
    }
    if (quality != null) {
      _result.quality = quality;
    }
    return _result;
  }
  factory EncodeImageAsJpeg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EncodeImageAsJpeg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EncodeImageAsJpeg clone() => EncodeImageAsJpeg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EncodeImageAsJpeg copyWith(void Function(EncodeImageAsJpeg) updates) =>
      super.copyWith((message) => updates(message as EncodeImageAsJpeg))
          as EncodeImageAsJpeg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EncodeImageAsJpeg create() => EncodeImageAsJpeg._();
  EncodeImageAsJpeg createEmptyInstance() => create();
  static $pb.PbList<EncodeImageAsJpeg> createRepeated() =>
      $pb.PbList<EncodeImageAsJpeg>();
  @$core.pragma('dart2js:noInline')
  static EncodeImageAsJpeg getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EncodeImageAsJpeg>(create);
  static EncodeImageAsJpeg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quality => $_getIZ(1);
  @$pb.TagNumber(2)
  set quality($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuality() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuality() => clearField(2);
}

enum Request_Body { blurhashEncode, imageDimensions, imageEncode, notSet }

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Body> _Request_BodyByTag = {
    1: Request_Body.blurhashEncode,
    2: Request_Body.imageDimensions,
    3: Request_Body.imageEncode,
    0: Request_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Request',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<CalculateBlurhash>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blurhashEncode',
        subBuilder: CalculateBlurhash.create)
    ..aOM<GetImageDimensions>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageDimensions',
        subBuilder: GetImageDimensions.create)
    ..aOM<EncodeImageAsJpeg>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageEncode',
        subBuilder: EncodeImageAsJpeg.create)
    ..hasRequiredFields = false;

  Request._() : super();
  factory Request({
    CalculateBlurhash? blurhashEncode,
    GetImageDimensions? imageDimensions,
    EncodeImageAsJpeg? imageEncode,
  }) {
    final _result = create();
    if (blurhashEncode != null) {
      _result.blurhashEncode = blurhashEncode;
    }
    if (imageDimensions != null) {
      _result.imageDimensions = imageDimensions;
    }
    if (imageEncode != null) {
      _result.imageEncode = imageEncode;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) =>
      super.copyWith((message) => updates(message as Request))
          as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Body whichBody() => _Request_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CalculateBlurhash get blurhashEncode => $_getN(0);
  @$pb.TagNumber(1)
  set blurhashEncode(CalculateBlurhash v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBlurhashEncode() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlurhashEncode() => clearField(1);
  @$pb.TagNumber(1)
  CalculateBlurhash ensureBlurhashEncode() => $_ensure(0);

  @$pb.TagNumber(2)
  GetImageDimensions get imageDimensions => $_getN(1);
  @$pb.TagNumber(2)
  set imageDimensions(GetImageDimensions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasImageDimensions() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageDimensions() => clearField(2);
  @$pb.TagNumber(2)
  GetImageDimensions ensureImageDimensions() => $_ensure(1);

  @$pb.TagNumber(3)
  EncodeImageAsJpeg get imageEncode => $_getN(2);
  @$pb.TagNumber(3)
  set imageEncode(EncodeImageAsJpeg v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImageEncode() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageEncode() => clearField(3);
  @$pb.TagNumber(3)
  EncodeImageAsJpeg ensureImageEncode() => $_ensure(2);
}

class Blurhash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Blurhash',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value')
    ..hasRequiredFields = false;

  Blurhash._() : super();
  factory Blurhash({
    $core.String? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Blurhash.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Blurhash.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Blurhash clone() => Blurhash()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Blurhash copyWith(void Function(Blurhash) updates) =>
      super.copyWith((message) => updates(message as Blurhash))
          as Blurhash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Blurhash create() => Blurhash._();
  Blurhash createEmptyInstance() => create();
  static $pb.PbList<Blurhash> createRepeated() => $pb.PbList<Blurhash>();
  @$core.pragma('dart2js:noInline')
  static Blurhash getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Blurhash>(create);
  static Blurhash? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class ImageDimensions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ImageDimensions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'width',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'height',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ImageDimensions._() : super();
  factory ImageDimensions({
    $core.int? width,
    $core.int? height,
  }) {
    final _result = create();
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory ImageDimensions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageDimensions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageDimensions clone() => ImageDimensions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageDimensions copyWith(void Function(ImageDimensions) updates) =>
      super.copyWith((message) => updates(message as ImageDimensions))
          as ImageDimensions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageDimensions create() => ImageDimensions._();
  ImageDimensions createEmptyInstance() => create();
  static $pb.PbList<ImageDimensions> createRepeated() =>
      $pb.PbList<ImageDimensions>();
  @$core.pragma('dart2js:noInline')
  static ImageDimensions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageDimensions>(create);
  static ImageDimensions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(1)
  set width($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}

class JpegImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'JpegImage',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  JpegImage._() : super();
  factory JpegImage({
    $core.List<$core.int>? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory JpegImage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JpegImage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JpegImage clone() => JpegImage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JpegImage copyWith(void Function(JpegImage) updates) =>
      super.copyWith((message) => updates(message as JpegImage))
          as JpegImage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JpegImage create() => JpegImage._();
  JpegImage createEmptyInstance() => create();
  static $pb.PbList<JpegImage> createRepeated() => $pb.PbList<JpegImage>();
  @$core.pragma('dart2js:noInline')
  static JpegImage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JpegImage>(create);
  static JpegImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Response_Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Response.Error',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'message')
    ..e<Response_Error_Kind>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'kind',
        $pb.PbFieldType.OE,
        defaultOrMaker: Response_Error_Kind.UNKNOWN,
        valueOf: Response_Error_Kind.valueOf,
        enumValues: Response_Error_Kind.values)
    ..hasRequiredFields = false;

  Response_Error._() : super();
  factory Response_Error({
    $core.String? message,
    Response_Error_Kind? kind,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (kind != null) {
      _result.kind = kind;
    }
    return _result;
  }
  factory Response_Error.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response_Error.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Response_Error clone() => Response_Error()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Response_Error copyWith(void Function(Response_Error) updates) =>
      super.copyWith((message) => updates(message as Response_Error))
          as Response_Error; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response_Error create() => Response_Error._();
  Response_Error createEmptyInstance() => create();
  static $pb.PbList<Response_Error> createRepeated() =>
      $pb.PbList<Response_Error>();
  @$core.pragma('dart2js:noInline')
  static Response_Error getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Response_Error>(create);
  static Response_Error? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  Response_Error_Kind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(Response_Error_Kind v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

enum Response_Body { error, blurhash, imageDimensions, jpegImage, notSet }

class Response extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Response_Body> _Response_BodyByTag = {
    1: Response_Body.error,
    2: Response_Body.blurhash,
    3: Response_Body.imageDimensions,
    4: Response_Body.jpegImage,
    0: Response_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Response',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'owlchat'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<Response_Error>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'error',
        subBuilder: Response_Error.create)
    ..aOM<Blurhash>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'blurhash',
        subBuilder: Blurhash.create)
    ..aOM<ImageDimensions>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'imageDimensions',
        subBuilder: ImageDimensions.create)
    ..aOM<JpegImage>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'jpegImage',
        subBuilder: JpegImage.create)
    ..hasRequiredFields = false;

  Response._() : super();
  factory Response({
    Response_Error? error,
    Blurhash? blurhash,
    ImageDimensions? imageDimensions,
    JpegImage? jpegImage,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (blurhash != null) {
      _result.blurhash = blurhash;
    }
    if (imageDimensions != null) {
      _result.imageDimensions = imageDimensions;
    }
    if (jpegImage != null) {
      _result.jpegImage = jpegImage;
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response))
          as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  Response_Body whichBody() => _Response_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Response_Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(Response_Error v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  Response_Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  Blurhash get blurhash => $_getN(1);
  @$pb.TagNumber(2)
  set blurhash(Blurhash v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlurhash() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlurhash() => clearField(2);
  @$pb.TagNumber(2)
  Blurhash ensureBlurhash() => $_ensure(1);

  @$pb.TagNumber(3)
  ImageDimensions get imageDimensions => $_getN(2);
  @$pb.TagNumber(3)
  set imageDimensions(ImageDimensions v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImageDimensions() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageDimensions() => clearField(3);
  @$pb.TagNumber(3)
  ImageDimensions ensureImageDimensions() => $_ensure(2);

  @$pb.TagNumber(4)
  JpegImage get jpegImage => $_getN(3);
  @$pb.TagNumber(4)
  set jpegImage(JpegImage v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasJpegImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearJpegImage() => clearField(4);
  @$pb.TagNumber(4)
  JpegImage ensureJpegImage() => $_ensure(3);
}
