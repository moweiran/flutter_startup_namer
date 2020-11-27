import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'AuthorizationResponse.dart';

class DioDemoPage extends StatefulWidget {
  @override
  _DioDemoPageState createState() => _DioDemoPageState();
}

class _DioDemoPageState extends State<DioDemoPage> {
  final appTitle = 'Dio Demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: DioDemo1(),
    );
  }
}

class DioDemo1 extends StatefulWidget {
  @override
  _DioDemo1State createState() => _DioDemo1State();
}

class _DioDemo1State extends State<DioDemo1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('dio test'),
            onPressed: () {
              Future<Response> response = getResponse();
              response.then((Response value) {
                print(value.data);
                AuthorizationResponse auth =
                    AuthorizationResponse.fromJson(value.data);
                print(auth.accessToken);
                _showSnackBar(context, auth.accessToken);
              });
            },
          )
        ],
      ),
    );
  }

  _showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the Scaffold in the widget tree and use
    // it to show a SnackBar.
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

Future<Response> getResponse() async {
  Response response;
  Dio dio = new Dio(
    BaseOptions(
      baseUrl: "http://192.168.0.101:60354",
      contentType: Headers.formUrlEncodedContentType,
    ),
  );
  response = await dio.post("/connect/token", data: {
    "client_id": "oms",
    "client_secret": "lwtch@678.com",
    "grant_type": "client_credentials",
  });
  print(response.data.toString());
  return response;
}
