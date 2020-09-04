import 'package:flutter/material.dart';
import 'package:startup_namer/pages/BasicAppBar.dart';
import 'package:startup_namer/pages/ButtionList.dart';
import 'package:startup_namer/pages/ExtractArgumentsScreen.dart';
import 'package:startup_namer/pages/MainScreen.dart';
import 'package:startup_namer/pages/RandomWords.dart';

class CustomRoute {
  static final routeList = <String, WidgetBuilder>{
    "/": (context) => ButtionList(),
    "/MainScreen": (context) => MainScreen(),
    "/RandomWords": (context) => RandomWords(),
    "/BasicAppBar": (context) => BasicAppBar(),
    ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
  };
}
