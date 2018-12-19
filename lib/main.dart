import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面1'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToSecond(context);
      },
      child: Text('去第二页'),
    );
  }

  _navigateToSecond(BuildContext context) async { //异步请求
    final result = await Navigator.push( //等待资源回来之后显示
        context, MaterialPageRoute(builder: (context) => SecondPage()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('页面2'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('携带数据返回上一页-1'),
            onPressed: () {
              Navigator.pop(context, '返回数据111');
            },
          ),
          RaisedButton(
            child: Text('携带数据返回上一页-2'),
            onPressed: () {
              Navigator.pop(context, '返回数据222');
            },
          ),
        ],
      )),
    );
  }
}
