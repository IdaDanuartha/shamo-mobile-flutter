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
      Uri.parse(url),
      headers: headers,
      body: body
    );

    if(response.statusCode == 200) {
      var data = jsonDecode(response.body)["data"];      
      data["user"]["token"] = 'Bearer ' + data['access_token'];
      UserModel user = UserModel.fromJson(data["user"]);

      return user;
    } else {
      throw Exception('Failed to create account!');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = "$baseUrl/auth/login";
    var headers = {
      "Content-Type": "application/json"
    };
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body
    );

    if(response.statusCode == 200) {
      var data = jsonDecode(response.body)["data"];      
      data["user"]["token"] = 'Bearer ' + data['access_token'];
      UserModel user = UserModel.fromJson(data["user"]);

      return user;
    } else {
      throw Exception('Login failed!');
    }
  }

  Future<bool> logout() async {
    var url = "$baseUrl/auth/logout";

    var response = await http.post(
      Uri.parse(url),
    );

    if(response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Logout failed!');
    }
  }
}