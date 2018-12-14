import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航演示',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('导航页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('跳转到SecondPage'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ));
            },
          ),
        ));
  }
}

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('导航页面2'),
//         ),
//         body: Center(
//           child: RaisedButton(
//             child: Text('返回'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ));
//   }
// }
