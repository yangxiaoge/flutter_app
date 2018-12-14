import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RowWidget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('RowWidget'),
          ),
          body: RowWidget()),
    );
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded( // Expanded 灵活水平布局
          child: RaisedButton(
            color: Colors.redAccent,
            child: Text('红色按钮'),
            onPressed: () {},
          ),
        ),
        RaisedButton(
          color: Colors.lightBlue,
          child: Text('蓝色按钮'),
          onPressed: () {},
        ),
        RaisedButton(
          color: Colors.orangeAccent,
          child: Text('黄色按钮'),
          onPressed: () {},
        ),
      ],
    );
  }
}
