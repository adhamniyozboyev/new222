import 'package:flutter/material.dart';
import 'package:new222/screens/secondPage.dart';
import '../moduls/user.dart';
import '../services/api.dart';

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
        body: FutureBuilder(
      future: getUser(19),
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        List<User> users = snapshot.data!;

        return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(users[index].smallImage),
                ),
                title: Text('${index}' + users[index].firstName),
                subtitle: Text(users[index].phoneNumber),
                onTap: () {
                  Navigator.pushNamed(context, SecondPage.routeName);
                },
              );
            });
      }),
    ));
  }
}
