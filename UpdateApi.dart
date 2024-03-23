import 'package:http/http.dart' as http;

void main() {
  updateUser();
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


Future<void> updateUser() async {
  var url = Uri.parse('https://reqres.in/api/users/2');
  var user = User(name: 'morpheus', job: 'leader');

  var response = await http.put(
    url,
    body: user.toJson(),
  );

  if (response.statusCode == 200) {
    print('User updated successfully');
    print(response.body);
  } else {
    print('Failed to update user');
  }
}
