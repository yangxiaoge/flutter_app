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
            child: Image.network(
              "https://i2.hdslb.com/bfs/face/0cca7e53848ebd079e1b55fde929a473a882ee7f.jpg@68w_68h.webp",
              // fit: BoxFit.contain, //图片填充模式
              // color: Color(0xffff0000), //颜色混合
              // colorBlendMode: BlendMode.darken, //混合模式
              repeat: ImageRepeat.repeatX,
              ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
