import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.text');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      // Read the file
      String contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('$counter');
  }
}

class ReadingWritingFilesPage extends StatefulWidget {
  @override
  _ReadingWritingFilesPageState createState() =>
      _ReadingWritingFilesPageState();
}

class _ReadingWritingFilesPageState extends State<ReadingWritingFilesPage> {
  final CounterStorage storage = CounterStorage();
  int _counter;
  @override
  void initState() {
    super.initState();
    storage.readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading and Writing Files')),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
