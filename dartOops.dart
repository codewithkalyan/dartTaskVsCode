void main() {

  Vehicle car1=Car();

  print((car1 as Car).isEngineWorking);
  
  Car car= Car();

  print(car.tyre);
  car.accelerate();

Truck truck=Truck();
print(truck.tyre);

 

}

class Vehicle {
int speed=10;
bool isLightOn=false;
bool isEngineWorking=false;

void accelerate() {
  speed=speed+10;
  print(speed);
}

}

class Car extends Vehicle{
  int tyre=4;
bool isEngineWorking=true;

}

class Truck extends Vehicle {
  int tyre=8;


}