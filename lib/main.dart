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
          child: Text('跟着JSPang(胖)学习Flutter，一起加油吧！',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: 23.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255,255, 125, 125),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid
            ),
          ),
        ),
      ),
    );
  }
}
