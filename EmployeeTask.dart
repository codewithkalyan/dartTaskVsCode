import 'dart:io';

void main() {

List<Employee> employees = [];

while(true) {
 print('Please choose an option:\n1. Create\n2. Delete\n3. List\n4. Search\n5. Update Emp\n6. Exit');
   
   int option= int.parse(stdin.readLineSync()!);

    if (option == 6) {
      break;
    }

   switch(option) {
    case 1:
    CreateEmployee(employees);
    break;
    case 2:
     DeleteById(employees);
     break;
     case 3:
     DisplayList(employees);
     break;
     case 4:
     SearchEmployee(employees);
     break;
     case 5:
     updateEmployee(employees);
     break;
     default:
     print("Invalid choice!!!. enter the Option between 1-6");
   }


}

}

class Employee {
  int empId;
  String employeeName;
  int phoneNumber;
  String?emailId;
  String address;
  int salary;

Employee(this.empId,this.employeeName,this.phoneNumber,this.emailId,this.address,this.salary);

String toString() {
  return "EmployeeId : $empId \nEmployeeName : $employeeName\nEmpPhoneNumber :$phoneNumber \nEmployeeMailId : $emailId\nAddress : $address \nSalary : $salary";
}
}

void CreateEmployee(List<Employee> employees) {
print("Enter Employee Details:\n");

print("EMP Id : ");
int empid;

 empid=int.parse(stdin.readLineSync()!);

print("Name : ");
String name=stdin.readLineSync()!;

print("Email : ");
String mailId=stdin.readLineSync()!;

print('Phone Number:');
int phone = int.parse(stdin.readLineSync()!);

print('Address:');
String adrss = stdin.readLineSync()!;

print('Monthly Salary:');
int salaryDetails =int.parse(stdin.readLineSync()!);

employees.add(Employee(empid,name,phone,mailId,adrss,salaryDetails));

print("\nEmp $name Created\n");

}

void DeleteById(List<Employee> employees) {
print("Enter the Id to Delete Employee");

bool found= false;

int empId=int.parse(stdin.readLineSync()!);
for(int i=0;i<employees.length;i++) {
  if(employees[i].empId==empId) {
    employees.removeAt(i);
     print('Employee with ID $empId deleted!\n');
     found=true;
  }
}
if(!found)
 print('Employee with ID $empId is not found!\n');
}

void DisplayList(List<Employee> employees) {
for(int i=0;i<employees.length;i++) {
print("EMP Id: ${employees[i].empId}\nName : ${employees[i].employeeName}");
print("********************************************************************");
}
}

void SearchEmployee(List<Employee> employees) {
    print("Enter the name to Search :");
  String empName=stdin.readLineSync()!;
  
  bool found=false;
  for(int i=0;i<employees.length;i++) {
    if(employees[i].employeeName==empName) {
      print("EMP Id: ${employees[i].empId} \nName : ${employees[i].employeeName} \n");
      print("*************************************");
      found=true;
    }
  }
  if(!found) {
      print("No Names are matched with $empName ");
     
    }
}
void updateEmployee(List<Employee>employees) {
   print("Enter the Emp ID to update :");
  int empId=int.parse(stdin.readLineSync()!);

  bool found=false;

  for(var employee in employees) {
    if(employee.empId==empId){
      print('Choose a field to update:');
      print('1. Name');
      print('2. Email');
      print('3. Phone Number');
      print('4. Address');
      print('5. Monthly Salary');

var choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print('Enter new name:');
          employee.employeeName = stdin.readLineSync()!;
          break;
        case 2:
          print('Enter new email:');
          employee.emailId = stdin.readLineSync();
          break;
        case 3:
          print('Enter new phone number:');
          employee.phoneNumber = int.parse(stdin.readLineSync()!);
          break;
        case 4:
          print('Enter new address:');
          employee.address = stdin.readLineSync()!;
          break;
        case 5:
          print('Enter new monthly salary:');
          employee.salary = int.parse(stdin.readLineSync()!);
          break;
        default:
          print('Invalid choice.');
          return;
      }
      print('Emp details for $empId have been updated.\n');
      return; 
    }
  }

  print('Employee with Emp ID $empId not found.\n');
}