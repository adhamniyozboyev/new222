import 'package:flutter/material.dart';
import 'package:new222/screens/secondPage.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, SecondPage.routeName);
        },
        child: Text('NextPage'),
      )),
    );
  }
}
