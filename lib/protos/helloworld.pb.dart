///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class TransportPayloadStringBondEN extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('TransportPayloadStringBondEN')
    ..a<int>(1, 'sessionToken', PbFieldType.O3)
    ..a<List<int>>(2, 'payload', PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TransportPayloadStringBondEN() : super();
  TransportPayloadStringBondEN.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TransportPayloadStringBondEN.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TransportPayloadStringBondEN clone() => new TransportPayloadStringBondEN()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static TransportPayloadStringBondEN create() => new TransportPayloadStringBondEN();
  static PbList<TransportPayloadStringBondEN> createRepeated() => new PbList<TransportPayloadStringBondEN>();
  static TransportPayloadStringBondEN getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyTransportPayloadStringBondEN();
    return _defaultInstance;
  }
  static TransportPayloadStringBondEN _defaultInstance;
  static void $checkItem(TransportPayloadStringBondEN v) {
    if (v is! TransportPayloadStringBondEN) checkItemFailed(v, 'TransportPayloadStringBondEN');
  }

  int get sessionToken => $_get(0, 0);
  set sessionToken(int v) { $_setSignedInt32(0, v); }
  bool hasSessionToken() => $_has(0);
  void clearSessionToken() => clearField(1);

  List<int> get payload => $_getN(1);
  set payload(List<int> v) { $_setBytes(1, v); }
  bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);
}

class _ReadonlyTransportPayloadStringBondEN extends TransportPayloadStringBondEN with ReadonlyMessageMixin {}

class ResultDtoBondEN extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ResultDtoBondEN')
    ..a<TransportPayloadStringBondEN>(1, 'dto', PbFieldType.OM, TransportPayloadStringBondEN.getDefault, TransportPayloadStringBondEN.create)
    ..hasRequiredFields = false
  ;

  ResultDtoBondEN() : super();
  ResultDtoBondEN.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ResultDtoBondEN.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ResultDtoBondEN clone() => new ResultDtoBondEN()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ResultDtoBondEN create() => new ResultDtoBondEN();
  static PbList<ResultDtoBondEN> createRepeated() => new PbList<ResultDtoBondEN>();
  static ResultDtoBondEN getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyResultDtoBondEN();
    return _defaultInstance;
  }
  static ResultDtoBondEN _defaultInstance;
  static void $checkItem(ResultDtoBondEN v) {
    if (v is! ResultDtoBondEN) checkItemFailed(v, 'ResultDtoBondEN');
  }

  TransportPayloadStringBondEN get dto => $_getN(0);
  set dto(TransportPayloadStringBondEN v) { setField(1, v); }
  bool hasDto() => $_has(0);
  void clearDto() => clearField(1);
}

class _ReadonlyResultDtoBondEN extends ResultDtoBondEN with ReadonlyMessageMixin {}

class Casa extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Casa')
    ..aOS(1, 'calle')
    ..a<int>(2, 'numero', PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Casa() : super();
  Casa.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Casa.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Casa clone() => new Casa()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Casa create() => new Casa();
  static PbList<Casa> createRepeated() => new PbList<Casa>();
  static Casa getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyCasa();
    return _defaultInstance;
  }
  static Casa _defaultInstance;
  static void $checkItem(Casa v) {
    if (v is! Casa) checkItemFailed(v, 'Casa');
  }

  String get calle => $_getS(0, '');
  set calle(String v) { $_setString(0, v); }
  bool hasCalle() => $_has(0);
  void clearCalle() => clearField(1);

  int get numero => $_get(1, 0);
  set numero(int v) { $_setSignedInt32(1, v); }
  bool hasNumero() => $_has(1);
  void clearNumero() => clearField(2);
}

class _ReadonlyCasa extends Casa with ReadonlyMessageMixin {}

