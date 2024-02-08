import 'dart:convert';

import 'package:mobile_flutter/models/user_model.dart';
import 'package:http/http.dart' as http;
class AuthService {
  String baseUrl = "http://127.0.0.1:8000/api";

  Future<UserModel> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    var url = "$baseUrl/auth/register";
    var headers = {
      "Content-Type": "application/json"
    };
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url as Uri,
      headers: headers,
      body: body
    );

    if(response.statusCode == 200) {
      var data = jsonDecode(response.body)["data"];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Failed to create account!');
    }
  }
}