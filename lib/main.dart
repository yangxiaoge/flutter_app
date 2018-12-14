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
      alignment:FractionalOffset(0.5, 1), //AlignmentDirectional.bottomCenter, //让Container布局居下(可以用多种方式实现)
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541280047.jpg'),
          radius: 100.0, //圆形弧度
        ),
        Container(
          decoration: BoxDecoration(color: Colors.redAccent),
          padding: EdgeInsets.all(5.0),
          child: Text('小猪猪你好',
          style: TextStyle(color: Colors.white),),
        )
      ],
    );
    return Center(child: stack,);
  }
}
