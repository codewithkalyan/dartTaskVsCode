void main() {

  final employee1= Employee("kalyan", EmployeeType.swe);
  final employee2=Employee("kishore", EmployeeType.finance);

  employee1.fn();
  employee2.fn();

}

enum EmployeeType  {
  swe(1000050),
  finance(150000),
  marketing(100000);

  final int salary ;

  const EmployeeType(this.salary);
}

class Employee {
   final String name;
   final EmployeeType type;
   Employee(this.name,this.type);

 void fn() {
  switch(type) {
    case EmployeeType.swe :
    print("$name is an software Engineer and his salary is ${type.salary}");
    case EmployeeType.finance:
      print("$name is an Finance Worker and his salary is ${type.salary}");
     case EmployeeType.marketing:
      print("$name is an Marketing Worker and his salary is ${type.salary}");
  }

 }

}