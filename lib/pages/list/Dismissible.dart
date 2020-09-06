import 'package:flutter/material.dart';

class DismissiblePage extends StatefulWidget {
  static const routeName = '/Dismissible';
  @override
  _DismissiblePageState createState() => _DismissiblePageState();
}

class _DismissiblePageState extends State<DismissiblePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: MyDismissible(),
    );
  }
}

class MyDismissible extends StatefulWidget {
  @override
  _MyDismissibleState createState() => _MyDismissibleState();
}

class _MyDismissibleState extends State<MyDismissible> {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
            SnackBar snackbar = SnackBar(
              content: Text('$item dismissed'),
            );
            Scaffold.of(context).showSnackBar(snackbar);
          },
          background: Container(
            color: Colors.red,
          ),
          child: ListTile(
            title: Text('$item'),
          ),
        );
      },
    );
  }
}
