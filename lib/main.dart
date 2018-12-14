import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StackWidget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Stack 层叠布局'),
          ),
          body: StackWidget()),
    );
  }
}

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义层叠布局
    var stack = Stack(
      alignment: FractionalOffset(0.5,
          1), //AlignmentDirectional.bottomCenter, //让Container布局居下(可以用多种方式实现)
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541280047.jpg'),
          radius: 100.0, //圆形弧度
        ),
        Positioned(
          top: 10.0,
          left: 35.0,
          child: Text(
            'yangxiaoge.github.io',
            style: TextStyle(color: Color(0xffff0000)),
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 60.0,
          child: Text(
            'yangxiaoge',
          style: TextStyle(color: Colors.redAccent)),
        ),
      ],
    );
    return Center(
      child: stack,
    );
  }
}
