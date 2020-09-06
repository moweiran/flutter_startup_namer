import 'package:flutter/material.dart';

class HorizontalListPage extends StatefulWidget {
  @override
  _HorizontalListPageState createState() => _HorizontalListPageState();
}

class _HorizontalListPageState extends State<HorizontalListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base List'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 2.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
