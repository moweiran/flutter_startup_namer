import 'package:flutter/material.dart';
import 'package:startup_namer/pages/BasicAppBar.dart';
import 'package:startup_namer/pages/ExtractArgumentsScreen.dart';
import 'package:startup_namer/pages/GestureDemo.dart';
import 'package:startup_namer/pages/InkWellDemo.dart';
import 'package:startup_namer/pages/MainScreen.dart';
import 'package:startup_namer/pages/OrientationList.dart';
import 'package:startup_namer/pages/RandomWords.dart';
import 'package:startup_namer/pages/animation/AnimatedContainerApp.dart';
import 'package:startup_namer/pages/animation/PhysicsCardDragDemo.dart';
import 'package:startup_namer/pages/animation/opacity-animation.dart';
import 'package:startup_namer/pages/animation/page-route-animation.dart';
import 'package:startup_namer/pages/form/MyCustomForm.dart';
import 'package:startup_namer/pages/http/background-parsing.dart';
import 'package:startup_namer/pages/http/delete.dart';
import 'package:startup_namer/pages/image/FadeImage.dart';
import 'package:startup_namer/pages/list/BaseList.dart';
import 'package:startup_namer/pages/list/Dismissible.dart';
import 'package:startup_namer/pages/list/FloatingAppBar.dart';
import 'package:startup_namer/pages/list/GridView.dart';
import 'package:startup_namer/pages/list/HorizontalList.dart';
import 'package:startup_namer/pages/list/LongList.dart';
import 'package:startup_namer/pages/list/MixedList.dart';
import 'package:startup_namer/pages/snackbar/SnackBarDemo.dart';
import 'package:startup_namer/pages/tabs/tab-bar.dart';

class CustomRoute {
  static final routeList = <String, WidgetBuilder>{
    TabBarDemo.routeName: (context) => TabBarDemo(),
    MainScreen.routeName: (context) => MainScreen(),
    RandomWords.routeName: (context) => RandomWords(),
    BasicAppBar.routeName: (context) => BasicAppBar(),
    ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
    PageRouteAnimation.routeName: (context) => PageRouteAnimation(),
    PhysicsCardDragDemo.routeName: (context) => PhysicsCardDragDemo(),
    AnimatedContainerApp.routeName: (context) => AnimatedContainerApp(),
    OpacityAnimationPage.routeName: (context) => OpacityAnimationPage(),
    SnackBarDemo.routerName: (context) => SnackBarDemo(),
    OrientationList.routeName: (context) => OrientationList(),
    MyCustomFormPage.routeName: (context) => MyCustomFormPage(),
    InkWellDemo.routeName: (context) => InkWellDemo(),
    GestureDemo.routeName: (context) => GestureDemo(),
    LongListPage.routeName: (context) => LongListPage(),
    DismissiblePage.routeName: (context) => DismissiblePage(),
    FadeImagePage.routeName: (context) => FadeImagePage(),
    BaseListPage.routeName: (context) => BaseListPage(),
    '/' + HorizontalListPage().toString(): (context) => HorizontalListPage(),
    '/' + GridViewPage().toString(): (context) => GridViewPage(),
    '/' + MixedListPage().toString(): (context) => MixedListPage(),
    '/' + FloatingAppBarPage().toString(): (context) => FloatingAppBarPage(),
    '/' + HttpDeletePage().toString(): (context) => HttpDeletePage(),
    '/' + BackgroundParsingPage().toString(): (context) =>
        BackgroundParsingPage(),
  };
}
