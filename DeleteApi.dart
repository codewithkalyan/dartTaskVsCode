import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('https://reqres.in/api/users/2');
  var response = await http.delete(url);

  if (response.statusCode == 204) {
    print('User deleted successfully.');
  } else {
    print('Failed to delete user. Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
