import 'package:flutter/material.dart';
import 'package:startup_namer/model/ScreenArguments.dart';
import 'package:startup_namer/route/customRoute.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> keys = CustomRoute.routeList.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomePage'),
      // ),
      body: _buildListView(),
    );
  }

  _buildListView() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        return _buildRow(i);
      },
    );
  }

  _buildRow(int i) {
    if (i < CustomRoute.routeList.length) {
      return ListTile(
        title: Text(keys[i]),
        onTap: () {
          Navigator.pushNamed(
            context,
            keys[i],
            arguments: ScreenArguments(
              'Extract Arguments Screen1',
              'This message is extracted in the build method3.',
            ),
          );
        },
      );
    }
    return null;
  }
}
