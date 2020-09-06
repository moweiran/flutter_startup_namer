import 'package:flutter/material.dart';

class BaseListPage extends StatefulWidget {
  static const routeName = '/BaseListPage';
  @override
  _BaseListPageState createState() => _BaseListPageState();
}

class _BaseListPageState extends State<BaseListPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base List'),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     const Text("I'm dedicating every day to you"),
      //     const Text('Domestic life was never quite my style'),
      //     const Text('When you smile, you knock me out, I fall apart'),
      //     const Text('And I thought I was so smart'),
      //   ],
      // ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: entries.length,
      ),
    );
  }
}
