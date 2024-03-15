import 'package:http/http.dart' as http;

void main() {
var url = Uri.https('jsonplaceholder.typicode.com', 'users');

 final res =http.get(url);

 print(res);
}
 void get (){
  
 }
