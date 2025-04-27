import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_skl_bp/data/models/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponse>> login(
      String email, String password) async {
    final response = await http.post(
        Uri.parse('http://192.168.31.71:8000/api/login'),
        headers: <String, String>{
          'content-type': 'application/json; charset=UTF-8',
          'accept': 'application/json'
        },
        body:
            jsonEncode(<String, String>{"email": email, "password": password}));
    if (response.statusCode == 200) {
      return Right(AuthResponse.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}
