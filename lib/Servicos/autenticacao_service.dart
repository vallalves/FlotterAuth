import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:login/main.dart';

Future<String> attemptLogIn(String username, String password) async {
  var res = await http.post("$SERVER_IP/entrar",
      body: json.encode({"email": username, "password": password}));
  if (res.statusCode == 200) return res.body;
  return null;
}
