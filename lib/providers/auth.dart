import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> signup(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=';
    final response = await http.post(
      url,
      body: json.encode(
        {
          'email': email,
          'password': password,
          'retureSecureToken': true,
        },
      ),
    );
    print(json.decode(response.body));
  }
}
