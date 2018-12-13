import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text('hello zz', style: TextStyle(fontSize: 40.0)),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // color: Colors.blue,
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
                ),
                border: Border.all(width: 5.0,color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}
