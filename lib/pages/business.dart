import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              stretch: true,
              expandedHeight: 107.0,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                // centerTitle: true,
                // title: Text('可折叠'),
                background: Stack(
                  // fit: StackFit.expand,
                  children: [
                    Image.network(
                      'https://pic4.zhimg.com/v2-98e8d1f74013cee50437654fabaf5ebb_1440w.jpg?source=172ae18b',
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: [Text('测试'), Text('ceshi2')],
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Center(
          child: Text('上拉查看效果'),
        ),
      ),
    );
  }
}
