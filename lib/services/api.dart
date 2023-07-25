import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String, String>> getUser(int counter) async {
  Uri url = Uri.https('randomuser.me', '/api', {'results': '$counter'});

  http.Response response = await http.get(url);
  Map<String, dynamic> body = jsonDecode(response.body);
  print(body['results'][0]['name']['first']);
  print(body['info']);
  return {};
}
