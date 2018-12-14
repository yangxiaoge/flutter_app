import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
          appBar: AppBar(
            title: Text('GridView'),
          ),
          body: MyGridView()),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10.0),
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.7),
      children: <Widget>[
        Image.network(
            'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2541280047.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540924496.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540940050.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2541019743.jpg'),
        Image.network(
            'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2539666559.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2539661066.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2537158013.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2538352472.jpg'),
        Image.network(
            'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540513831.jpg')
      ],
    );
  }
}
