import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('导航页面2独立文件页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
