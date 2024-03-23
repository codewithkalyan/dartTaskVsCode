import 'package:http/http.dart' as http;

void main() {
  loginUser();
}


class LoginCredentials {
  final String email;
  final String password;

  LoginCredentials({required this.email, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}

Future<void> loginUser() async {
  var url = Uri.parse('https://reqres.in/api/login');
  var credentials = LoginCredentials(email: 'eve.holt@reqres.in', password: 'cityslicka');

  var response = await http.post(
    url,
    body: credentials.toJson(),
  );

  if (response.statusCode == 200) {
    print('Login successful');
    print(response.body);
  } else {
    print('Failed to login');
  }
}
