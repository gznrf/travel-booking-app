import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hostel_booking/repositories/routes/routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepo{
  static final storage = FlutterSecureStorage();

  static Future<int> registerUser(String name, String surname, String email, String password) async {
    Map<String, String> registerBody = {
      "user_name":name,
      "user_surname":surname,
      "user_email":email,
      "user_password":password
    };
    final response = await Dio().post(signUpRoute, data: registerBody);
    return response.statusCode ?? 400;
  }

  static Future<Map<String, dynamic>> loginUser(String email, String password) async {
    Map<String, String> loginBody = {
      "user_email":email,
      "user_password":password
    };
    final response = await Dio().post(signInRoute, data: loginBody);
    final responseData = jsonDecode(response.toString());

    Map<String, dynamic> loginResponse = {
      "response_data": responseData,
      "status_code": response.statusCode,
    };

    return loginResponse;
  }

  static Future<void> saveToken(String token) async {
    await storage.write(key: 'auth_token', value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: 'authToken');
  }

  static Future<void> deleteToken() async {
    await storage.delete(key: 'authToken');
  }
}