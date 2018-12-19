import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                '本地图片：',
                style: TextStyle(color: Colors.red),
              ),
              Image.asset(
                'images/funny1.jpeg',
                width: 200,
                height: 200,
              ),
              Divider(),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                      '网络图片：',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    Image.network(
                      'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541280047.webp',
                      width: 140,
                      height: 200,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
