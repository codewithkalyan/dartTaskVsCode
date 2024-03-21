import 'package:http/http.dart' as http;
import 'dart:convert';


void main() async{
var url = Uri.parse('https://reqres.in/api/users?page=2');

try {


 final res =await http.get(url);
 print(jsonDecode(res.body));
 }
 catch(e) {
  print("Some unexcpected error occured ");
 }

 
}
 void get (){
  
 }
