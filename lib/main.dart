import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ColumnWidget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('ColumnWidget'),
          ),
          body: ColumnWidget()),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: RaisedButton(
            color: Colors.redAccent,
            child: Text('红色按钮'),
            onPressed: () {},
          ),
        ),
        Center(
          child: RaisedButton(
            color: Colors.lightBlue,
            child: Text('蓝色按钮'),
            onPressed: () {},
          ),
        ),
        Center(
          child: RaisedButton(
            color: Colors.orangeAccent,
            child: Text('黄色按钮'),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
