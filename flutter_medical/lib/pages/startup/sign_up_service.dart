import 'dart:convert';
import 'package:flutter_medical/utils/routes.dart';
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String mail, String password) async {
    http.Response response = await http.post(
      Routes.signUp,
      body: json.encode(
        {
          "email": mail,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
    print(response.body);
  }
}
