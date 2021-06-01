import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  Future<void> signup(String username, String password) async {
    var registerurl = Uri.parse('http://127.0.0.1:8000/register');

    var response = await http.post(registerurl,
        body: json.encode({
          // 'name': name,
          // 'age': age,
          // 'location': location,
          'username': username,
          'password': password,
        }));
    final responsedata = json.decode(response.body);
    print(responsedata);
  }
}
