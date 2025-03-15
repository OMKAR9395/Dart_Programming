import 'dart:io';

class Student {
  static int Total = 0; // Static variable 
  String name;
  int physics;
  int chemistry;
  int maths;


  Student(this.name, this.physics, this.chemistry, this.maths){     // Parameterized Constructor assigning values direct using this

  print("We Are Inside Of Constructor..");
  }
  calculatePercentage() {
   Total = physics + chemistry + maths;
   
  }

}

void main() {

  print('Total Marks${Student.Total}');             // static variable display

  print("Enter Student Name: ");
  String name = stdin.readLineSync()??"Omkar";

  print("Enter Physics Marks: ");
  int physics = int.parse(stdin.readLineSync()??"50");

  print("Enter Chemistry Marks: ");
  int chemistry = int.parse(stdin.readLineSync()??"67");

  print("Enter Maths Marks: ");
  int maths = int.parse(stdin.readLineSync()??"70");

   // Printing Main variables 
  print(name);
  print(physics);
  print(chemistry);
  print(maths);
  print(Student.Total);

  Student Stud = new Student(name, physics, chemistry, maths);
  Stud.calculatePercentage();

 // Printing class variables 
  print(Stud.name);
  print(Stud.physics);
  print(Stud.chemistry);
  print(Stud.maths);
  print(Student.Total);
}
