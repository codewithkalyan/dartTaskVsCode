// ignore: unused_import
import 'dart:convert';
// ignore: unused_import
import 'package:http/http.dart' as http;


void main() async{

  var baseUrl=Uri.parse("https://reqres.in/api/users/2");
  

  final response=await http.get(baseUrl);

  if(response.statusCode==200) {
    final jsonData=jsonDecode(response.body);
    final result=User.fromJson(jsonData['data']);
    print(result);
  }
  else if(response.statusCode==404) {
   print("No records are there");
  }
  else  {
    print("Everything is wrong");
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
    return 'id: $id,\nemail: $email,\nfirstName: $firstName,\nlastName: $lastName,\navatar: $avatar';
  }

}
