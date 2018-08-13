///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'helloworld.pb.dart';
export 'helloworld.pb.dart';

class SClient extends Client {
  static final _$m =
      new ClientMethod<TransportPayloadStringBondEN, ResultDtoBondEN>(
          '/S/m',
          (TransportPayloadStringBondEN value) => value.writeToBuffer(),
          (List<int> value) => new ResultDtoBondEN.fromBuffer(value));

  SClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseStream<ResultDtoBondEN> m(
      Stream<TransportPayloadStringBondEN> request,
      {CallOptions options}) {
    final call = $createCall(_$m, request, options: options);
    return new ResponseStream(call);
  }
}

abstract class SServiceBase extends Service {
  String get $name => 'S';

  SServiceBase() {
    $addMethod(new ServiceMethod<TransportPayloadStringBondEN, ResultDtoBondEN>(
        'm',
        m,
        true,
        true,
        (List<int> value) => new TransportPayloadStringBondEN.fromBuffer(value),
        (ResultDtoBondEN value) => value.writeToBuffer()));
  }

  Stream<ResultDtoBondEN> m(
      ServiceCall call, Stream<TransportPayloadStringBondEN> request);
}
