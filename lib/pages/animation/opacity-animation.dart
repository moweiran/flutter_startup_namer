// The StatefulWidget's job is to take data and create a State class.
// In this case, the widget takes a title, and creates a _MyHomePageState.
import 'package:flutter/material.dart';

class OpacityAnimationPage extends StatefulWidget {
  final String title;

  static var routeName = "/OpacityAnimationPage";

  OpacityAnimationPage({Key key, this.title = 'OpacityAnimationPage'})
      : super(key: key);

  @override
  _OpacityAnimationPageState createState() => _OpacityAnimationPageState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _OpacityAnimationPageState extends State<OpacityAnimationPage> {
  // Whether the green box should be visible.
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
