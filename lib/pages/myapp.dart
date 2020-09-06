import 'package:flutter/material.dart';
import 'package:startup_namer/pages/tabs/bottom-tab-bar.dart';
import 'package:startup_namer/route/CustomRoute.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // theme: ThemeData(fontFamily: 'Raleway'),
      // initialRoute: "/",
      routes: CustomRoute.routeList,
      home: BottomTabBarDemo(),
    );
    return materialApp;
  }
}
