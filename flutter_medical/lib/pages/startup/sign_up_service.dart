import 'dart:convert';
import 'package:flutter_medical/constants/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String email, String password) async {
    http.Response response = await http.post(
      Routes.SignUp,
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    print(response.body);
  }
}
