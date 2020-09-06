import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendlyChat extends StatefulWidget {
  @override
  _FriendlyChatState createState() => _FriendlyChatState();
}

class _FriendlyChatState extends State<FriendlyChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendlyChat'),
      ),
      body: Text('Hello world'),
    );
  }
}
