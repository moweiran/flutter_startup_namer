import 'package:flutter/material.dart';
import 'package:startup_namer/model/ScreenArguments.dart';
import 'package:startup_namer/route/customRoute.dart';

class ButtionList extends StatefulWidget {
  @override
  _ButtionListState createState() => _ButtionListState();
}

class _ButtionListState extends State<ButtionList> {
  // entities = CustomRoute.routeList.
  List<String> keys = CustomRoute.routeList.keys.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name'),
      ),
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
    if (i < 5) {
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
