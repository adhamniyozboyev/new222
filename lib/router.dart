

import 'package:flutter/material.dart';
import 'package:new222/screens/homePage.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => HomePage());

    default:
      return MaterialPageRoute(
          builder: ((context) => Scaffold(
                body: Center(child: Text('Not found')),
              )));
  }
}
