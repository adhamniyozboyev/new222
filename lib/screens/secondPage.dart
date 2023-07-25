
import 'package:flutter/material.dart';
import 'package:new222/services/api.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = 'second';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    
    // getUser(10).then((value) => print('what e'));
    return Scaffold(
      appBar: AppBar(
        title: Text('People'),
      ),
      body: Column(
        children: [
          ListTile(
            // title: Text(),
          )
        ],
      ),
    );
  }
}
