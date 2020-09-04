import 'package:flutter/material.dart';
import 'package:startup_namer/route/CustomRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: "/",
      routes: CustomRoute.routeList,
    );
    return materialApp;
  }
}
