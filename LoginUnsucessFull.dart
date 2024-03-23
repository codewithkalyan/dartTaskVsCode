import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginRequest {
  late String email;
  late String password;

  LoginRequest({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

void main() async {
  var loginRequest = LoginRequest(email: 'peter@klaven', password: '');

  var url = Uri.parse('https://reqres.in/api/login');
  var response = await http.post(url, body: loginRequest.toJson());

  if (response.statusCode == 400) {
    print('Login unsuccessful. Invalid request. Status code: ${response.statusCode}');
  }  else {
    print('Login unsuccessful. Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
