// import 'dart:convert';
// import '../moduls/user.dart';
// import 'package:http/http.dart' as http;

// Future<Map<String, String>> getUser([int count=1]) async {
//   Uri url = Uri.https('randomuser.me', '/api', {'results': '10'});

//   http.Response response = await http.get(url);
//   Map<String, dynamic> body = jsonDecode(response.body);
//   Map<String, dynamic> userData = body['results'][0];
//   User users = User(
//       firstName: userData['name']['first'],
//       lastName: userData['name']['last'],
//       phoneNumber: userData['phone'],
//       email: userData['email'],
//       country: userData['location']['country'],
//       dob: userData['dob']['date'],
//       city: userData['location']['city'],
//       smallImage: userData['picture']['thumnnail'],
//       bigImage: userData['picture']['big']);
//   // print(body['results'][0]['name']['first']);
//   print(body['info']);
//   return {};
// }
import 'dart:convert';
import '../moduls/user.dart';
import 'package:http/http.dart' as http;

Future<List<User>> getUser([int count = 1]) async {
  Uri url = Uri.https('randomuser.me', '/api', {  'results': '$count'});

  http.Response response = await http.get(url);

  Map<String, dynamic> body = jsonDecode(response.body);

  List<User> users = [];
  print(response.statusCode);

  for (int i = 0; i < body['results'].length; i++) {
    users.add(User.fromJson(body['results'][i]));
  }

  print(2345678);

  return users;
}
