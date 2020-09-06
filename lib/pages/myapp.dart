import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:startup_namer/common/theme.dart';
import 'package:startup_namer/model/CartModel.dart';
import 'package:startup_namer/model/CatalogModel.dart';
import 'package:startup_namer/pages/tabs/bottom-tab-bar.dart';
import 'package:startup_namer/route/CustomRoute.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: appTheme,
      // theme: ThemeData(fontFamily: 'Raleway'),
      // initialRoute: "/",
      routes: CustomRoute.routeList,
      home: BottomTabBarDemo(),
    );
    var providers = <SingleChildWidget>[
      // In this sample app, CatalogModel never changes, so a simple Provider
      // is sufficient.
      Provider(create: (context) => CatalogModel()),
      // CartModel is implemented as a ChangeNotifier, which calls for the use
      // of ChangeNotifierProvider. Moreover, CartModel depends
      // on CatalogModel, so a ProxyProvider is needed.
      ChangeNotifierProxyProvider<CatalogModel, CartModel>(
        create: (context) => CartModel(),
        update: (context, catalog, cart) {
          cart.catalog = catalog;
          return cart;
        },
      ),
    ];
    return MultiProvider(
      providers: providers,
      child: materialApp,
    );
  }
}
