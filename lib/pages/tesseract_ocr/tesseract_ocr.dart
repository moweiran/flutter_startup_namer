import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:tesseract_ocr/tesseract_ocr.dart';

class TesseractPage extends StatefulWidget {
  @override
  _TesseractPageState createState() => _TesseractPageState();
}

class _TesseractPageState extends State<TesseractPage> {
  bool _scanning = false;
  String _extractText = '';
  int _scanTime = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Tesseract OCR'),
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text('Select image'),
                      onPressed: () async {
                        // var file = await FilePicker.platform
                        //     .pickFiles(type: FileType.image);
                        // _scanning = true;
                        // setState(() {});

                        // var watch = Stopwatch()..start();
                        // _extractText =
                        //     await TesseractOcr.extractText(file.paths[0]);
                        // _scanTime = watch.elapsedMilliseconds;

                        // _scanning = false;
                        // setState(() {});
                      },
                    ),
                    // It doesn't spin, because scanning hangs thread for now
                    // _scanning
                    //     ? SpinKitCircle(
                    //         color: Colors.black,
                    //       )
                    //     : Icon(Icons.done),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Scanning took $_scanTime ms',
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(child: SelectableText(_extractText)),
              ],
            ),
          )),
    );
  }
}
