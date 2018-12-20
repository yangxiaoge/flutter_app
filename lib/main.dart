import 'package:flutter/material.dart';
import 'package:dio/dio.dart'; //网络
import 'package:http/http.dart' as http; //网络
import 'dart:convert'; //解码和编码 JSON

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final response = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var responseDataFromdio = '';
  var responseDataFromHttp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body:SingleChildScrollView(child: 
       Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _dioRead();
                _httpRead();
              },
              child: Text('请求网络Get'),
            ),
            Text(responseDataFromdio),
            Container(padding: EdgeInsets.all(16.0),),
            Text(responseDataFromHttp),
          ],
        ),
      ),)
    );
  }

  _dioRead() async {
    Dio dio = new Dio();
    Response getResponse = await dio.get(
        'https://easy-mock.com/mock/5997cce9059b9c566dc7e771/leitaijingji_list/getAppConsole111');
    print('statusCode: ' + getResponse.statusCode.toString());
    print('getResponse: ' + getResponse.data.toString());

    setState(() {
      responseDataFromdio = 'dio请求报文内容：\n' + getResponse.data.toString();
    });
  }

  _httpRead() async {
    final response = await http.get(
        'https://easy-mock.com/mock/5997cce9059b9c566dc7e771/leitaijingji_list/getAppConsole111');
    print('getResponse: ' + response.body);
    setState(() {
      responseDataFromHttp = 'http请求报文内容：\n' + response.body;
    });
  }
}
