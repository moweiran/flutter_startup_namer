import 'package:flutter/material.dart';
import 'package:hello/hello.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  String _phoneNumber = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('PhoneNumber: $_phoneNumber\n'),
          RaisedButton(
            child: Text('扫描手机号'),
            onPressed: () async {
              List<String> phones = [
                '15018533327',
                '18823774193',
                '18959206360',
              ];
              String phoneNumber =
                  await Hello.openActivity(isSaveImg: false, phones: phones);
              setState(() {
                _phoneNumber = phoneNumber;
              });
            },
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
