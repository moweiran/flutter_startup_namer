import 'package:flutter/material.dart';

class InkWellDemo extends StatefulWidget {
  static const routeName = '/InkWellDemo';
  @override
  _InkWellDemoState createState() => _InkWellDemoState();
}

class _InkWellDemoState extends State<InkWellDemo> {
  final title = 'InkWell Demo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The InkWell wraps the custom flat button widget.
    return InkWell(
      // When the user taps the button, show a snackbar.
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Tap'),
        ));
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
    );
  }
}
