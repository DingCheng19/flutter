import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  _MyPageState createState() => _MyPageState();

}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('マイ'),
        ),
        body: Center(
          child: Text('マイ'),
        ),
      ),
    );

  }
  
}