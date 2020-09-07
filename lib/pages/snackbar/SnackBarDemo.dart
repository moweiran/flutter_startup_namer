import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  static var routerName = '/SnackBarDemo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Demo'),
      ),
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          _showSnackBar(context);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }

  _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    // Find the Scaffold in the widget tree and use
    // it to show a SnackBar.
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
