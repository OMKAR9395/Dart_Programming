import 'dart:io';

class Calculator {
  double num1 = 0,num2 = 0;
  
// Parameterized Constructor
  Calculator(double a,double b) {
    print("Inside Of Default constructor");
    num1 = a;
    num2 = b;
  }


  double add() {
   return num1+num2;
  }
  double subtract(){
    return num1 - num2;
  }
  double multiply(){
    return num1 * num2;
  }
  double divide(){
    return num1 / num2;
  }
  
}
void main() {

  print("Enter first number: ");
  double a = double.parse(stdin.readLineSync() ?? "0");

  print("Enter Second number: ");
  double b = double.parse(stdin.readLineSync() ?? "0");
    Calculator calc = Calculator(a,b);


  print("Addition: ${calc.add()}");
  print("Subtraction: ${calc.subtract()}");
  print("Multiplication: ${calc.multiply()}");
  print("Division: ${calc.divide()}");
}
