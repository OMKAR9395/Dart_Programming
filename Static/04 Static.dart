import 'dart:io';

class Calculator {
  static double add(double a, double b) => a + b;
  static double subtract(double a, double b) => a - b;
  static double multiply(double a, double b) => a * b;
  static double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Cannot divide by zero!");
    }
    return a / b;
  }
}

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose operation (+, -, *, /):");
  String? op = stdin.readLineSync();

  double result;
  switch (op) {
    case '+':
      result = Calculator.add(num1, num2);
      break;
    case '-':
      result = Calculator.subtract(num1, num2);
      break;
    case '*':
      result = Calculator.multiply(num1, num2);
      break;
    case '/':
      result = Calculator.divide(num1, num2);
      break;
    default:
      print("Invalid operation!");
      return;
  }

  print("Result: $result");
}
