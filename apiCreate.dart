import 'package:http/http.dart' as http;
import 'dart:io';

void main() {
  createUser();
}

Future<void> createUser() async {

  var baseUrl="https://reqres.in";
  print("Enter the Path: ");
  String path=stdin.readLineSync()!;
  var url=Uri.parse(baseUrl+path);

///api/users

  print("Enter the name and Jobs");
   
   String names=stdin.readLineSync()!;
   String jobs=stdin.readLineSync()!;

  var user = User(name: names, job: jobs);

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