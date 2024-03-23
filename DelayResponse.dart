import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchUsers() async {
 
  await Future.delayed(Duration(seconds: 3));

  var url = Uri.parse('https://reqres.in/api/users?delay=3');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    
    print(jsonData);
  } else {
    print('Failed to load users: ${response.statusCode}');
  }
}

void main() {
  fetchUsers();
}
