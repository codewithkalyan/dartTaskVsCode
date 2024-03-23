import 'package:http/http.dart' as http;


void main() {
  createUser();
}

Future<void> createUser() async {
  var url = Uri.parse('https://reqres.in/api/users');
  var user = User(name: 'morpheus', job: 'leader');

  var response = await http.post(
    url,
    body: user.toJson(),
  );

  if (response.statusCode == 201) {
    print('User created successfully');
    print(response.body);
  } else {
    print('Failed to create user');
  }
}



class User {
  final String name;
  final String job;

  User({required this.name, required this.job});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'job': job,
    };
  }
}