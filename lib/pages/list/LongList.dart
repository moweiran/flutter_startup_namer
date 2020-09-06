import 'package:flutter/material.dart';

class LongListPage extends StatefulWidget {
  static const routeName = '/LongListPage';
  @override
  _LongListPageState createState() => _LongListPageState();
}

class _LongListPageState extends State<LongListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
      body: MyLongList(),
    );
  }
}

class MyLongList extends StatefulWidget {
  @override
  _MyLongListState createState() => _MyLongListState();
}

class _MyLongListState extends State<MyLongList> {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${items[index]}'),
        );
      },
    );
  }
}
