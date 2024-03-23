import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {

  var baseUrl=Uri.parse("https://reqres.in/api/unknown/23");
  final response= await http.get(baseUrl);

  if(response.statusCode==200) {

    final jsonCode=jsonDecode(response.body);
    
    final result=Resource.getJson(jsonCode['data']);

    print(result);
  }
  else if(response.statusCode==404) {
    print("File not found");
  }
  else  {
   print("Something went wrong...");
  }


}

class Resource {
  int id;
  String name;
  int year;
  String color;
  String pantOne;


  Resource({
    required this.id,
    required this.name,
    required this.year,
    required this.color,
    required this.pantOne
  });


  Resource.getJson(Map<String,dynamic>json) :
  id=json["id"],
  name=json["name"],
  year=json["year"],
  color=json["color"],
  pantOne=json["pantone_value"];

@override
  String toString() {
    
    return "Id: $id,\nName : $name,\nYear : $year,\nColor : $color,\nPantone Value : $pantOne";
  }


}