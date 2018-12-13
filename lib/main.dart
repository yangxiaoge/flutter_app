import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'JSPang Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('ListView Widget'),
          ),
          body: Center(
            child: Container(
              height: 200.0,
              child: MyListView(),
            ),
          )),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          alignment: Alignment.center, //居中对齐
          width: 180.0,
          child: new Image.network(
              'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
        ),
        new Container(
          width: 180.0,
          alignment: Alignment.center,
          child: new Image.network(
              'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
        ),
        new Container(
          width: 180.0,
          alignment: Alignment.center,
          child: new Image.network(
              'http://jspang.com/static/upload/20181126/FB4kjZaGt48a4HzYakHWQpU7.png'),
        ),
        new Container(
            alignment: Alignment.center,
            width: 180.0,
            child: new ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('listview item1'),
            )),
        new Container(
            alignment: Alignment.center,
            width: 180.0,
            child: new ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('listview item2'),
            )),
        new Container(
            alignment: Alignment.center,
            width: 180.0,
            child: new ListTile(
              leading: Icon(Icons.adb),
              title: Text('listview item3'),
            )),
      ],
    );
  }
}
