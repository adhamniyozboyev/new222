import 'package:flutter/material.dart';
import 'package:new222/services/api.dart';
import '../moduls/user.dart';
// import 'package:new222/services/api.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = 'second';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('People'),
        ),
        body: FutureBuilder(
            future: getUser(),
            builder: (context, snapshot) {
              List<User> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
               return Column(
                  children: [Image.network(users[index].bigImage)],
                );
              });
            }));
  }
}
