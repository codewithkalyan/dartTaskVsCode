import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {


var baseUrl=Uri.parse("https://reqres.in/api/users?page=2");
final response=await http.get(baseUrl);

if(response.statusCode==200) {
  final jsonData=jsonDecode(response.body);

  final result=(jsonData['data'] as List).map((user) => User.fromJson(user)).toList();


  for(var user in result) {
   print(user);
  }
  print('Page: ${jsonData['page']}');
    print('Per Page: ${jsonData['per_page']}');
    print('Total: ${jsonData['total']}');
    print('Total Pages: ${jsonData['total_pages']}');
}
else {
  print("Something went wrong");
}
}

class User {
  int id;
   String email;
   String firstName;
   String lastName;
   String avatar;

  User({
  required this.id,
  required this.email,
  required this.firstName,
  required this.lastName,
  required this.avatar}
  );


  User.fromJson(Map<String,dynamic>json)
    : id=json["id"],
    email=json["email"],
    firstName=json["first_name"],
    lastName=json["last_name"],
    avatar =json["avatar"];


    @override
  String toString() {
     print("******************************");
    return 'id: $id,\nemail: $email,\nfirstName: $firstName,\nlastName: $lastName,\navatar: $avatar';
    
  }


}