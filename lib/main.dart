import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardWidget',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Card 卡片布局'),
          ),
          body: StackWidget()),
    );
  }
}

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义Card布局
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('江苏省南京市江北新区'),
            subtitle: Text('星火路'),
            leading: Icon(Icons.account_balance),
          ),
          Divider(color: Colors.redAccent,indent: 20.0,),
          ListTile(
            title: Text('江苏省南京市鼓楼区'),
            subtitle: Text('紫峰大厦'),
            leading: Icon(Icons.map),
          ),
          Divider(),
          ListTile(
            title: Text('江苏省南京市玄武区'),
            subtitle: Text('玄武湖'),
            leading: Icon(Icons.leak_add),
          )
        ],
      ),
    );
    return Center(
      child: card,
    );
  }
}
