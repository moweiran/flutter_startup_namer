import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeImagePage extends StatefulWidget {
  static const routeName = '/FadeImagePage';
  @override
  _FadeImagePageState createState() => _FadeImagePageState();
}

class _FadeImagePageState extends State<FadeImagePage> {
  final double v = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeImagePage'),
      ),
      body: MyFadeImage(),
      // body: Stack(
      //   children: <Widget>[
      //     Center(
      //       child: CircularProgressIndicator(
      //           // value: v,
      //           ),
      //     ),
      //     Center(
      //       child: FadeInImage.memoryNetwork(
      //         placeholder: kTransparentImage,
      //         image: 'https://picsum.photos/250?image=7',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class MyFadeImage extends StatefulWidget {
  @override
  _MyFadeImageState createState() => _MyFadeImageState();
}

class _MyFadeImageState extends State<MyFadeImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(child: CircularProgressIndicator()),
        // Center(
        //   child: FadeInImage.memoryNetwork(
        //     placeholder: kTransparentImage,
        //     image: 'https://picsum.photos/250?image=2',
        //   ),
        // ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/250?image=3',
            ),
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/default.png',
              image: 'https://picsum.photos/250?image=4',
            ),
            CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: 'https://picsum.photos/250?image=9',
            ),
          ],
        ),
      ],
    );
  }
}
