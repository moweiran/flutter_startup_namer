import 'package:flutter/material.dart';

class PageRouteAnimation extends StatefulWidget {
  static const routeName = '/PageRouteAnimation';
  @override
  _PageRouteAnimationState createState() => _PageRouteAnimationState();
}

class _PageRouteAnimationState extends State<PageRouteAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      var curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );

      return SlideTransition(
        position: offsetAnimation, //tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Page 2'),
      ),
    );
  }
}
