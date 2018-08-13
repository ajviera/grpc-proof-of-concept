import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'dart:convert';

import 'dart:async';

import 'protos/helloworld.pbgrpc.dart';

class MainPage extends StatefulWidget {
  final String title;

  MainPage({Key key, this.title}) : super(key: key);

  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  String _displayedJoke = 'beginning...';

  ClientChannel _channel;
  ClientMethod<TransportPayloadStringBondEN, ResultDtoBondEN> _method;

  StreamController<TransportPayloadStringBondEN> _requestStream;

  MainPageState() {
    _channel = new ClientChannel('192.168.88.15',
        port: 5001,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));

    _method = new ClientMethod<TransportPayloadStringBondEN, ResultDtoBondEN>(
        '/S/m',
        (TransportPayloadStringBondEN value) => value.writeToBuffer(),
        (List<int> value) => new ResultDtoBondEN.fromBuffer(value));
  }

  @override
  initState() {
    super.initState();
  }

  @override
  dispose() {
    _closeChannel();
    super.dispose();
  }

  _closeChannel() async {
    await _channel.shutdown();
  }

  _firstConnect() async {
    _requestStream = StreamController<TransportPayloadStringBondEN>.broadcast();

    var clientCall =
        new ClientCall(_method, _requestStream.stream, new CallOptions());

    final responseStream = new ResponseStream(clientCall).asBroadcastStream();
    responseStream.listen((res) => responses(res));

    await _channel.getConnection().then((connection) {
      if (clientCall.isCancelled) return;
      connection.dispatchCall(clientCall);
    }, onError: clientCall.onConnectionError);
  }

  _sendData(d) {
    Casa casa = Casa();
    casa.calle = 'A';
    casa.numero = 0;

    var i = new TransportPayloadStringBondEN();
    i.payload = casa.writeToBuffer();

    _requestStream.add(i);
  }

  void requestes(TransportPayloadStringBondEN rq) {
    Casa result = Casa.fromBuffer(rq.payload);
    print(result);
  }

  void responses(ResultDtoBondEN res) {
    Casa result = Casa.fromBuffer(res.dto.payload);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Container(
            padding: new EdgeInsets.all(18.0),
            child: new MaterialButton(
                color: Color(0xFF42A5F5),
                onPressed: () => _sendData('FUNCIONAAA'))),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _firstConnect(),
        tooltip: 'Echo',
        child: new Icon(Icons.refresh),
      ),
    );
  }
}
