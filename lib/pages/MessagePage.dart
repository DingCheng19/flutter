import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  _MessagePageState createState() => _MessagePageState();

}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('メッセージ'),
        ),
        body: Center(
          child: Text('メッセージ'),
        ),
      ),
    );

  }
  
}