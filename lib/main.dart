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
        body: ListView(
          children: <Widget>[
            new Image.network(
                'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
            new Image.network(
                'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
            new Image.network(
                'http://jspang.com/static/upload/20181126/FB4kjZaGt48a4HzYakHWQpU7.png'),
            new ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('listview item1'),
            ),
            new ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('listview item2'),
            ),
            new ListTile(
              leading: Icon(Icons.adb),
              title: Text('listview item3'),
            )
          ],
        ),
      ),
    );
  }
}
