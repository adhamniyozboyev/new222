import 'package:flutter/material.dart';
import 'package:new222/services/api.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    getUser(10).then(
      (value) => print('hello'),
    );
    return Scaffold(
      body: Center(
        child: Text('12345'),
      ),
    );
  }
}
