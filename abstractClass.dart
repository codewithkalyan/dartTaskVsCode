void main() {
Vehicle v=Car();
}

abstract class Vehicle  {
int noOfWheels=6;
void accelarating ();
}

class Car implements Vehicle {
  @override 
  int noOfWheels=10;
@override 
void accelarating () {
  print("acclerate  car");
}

}