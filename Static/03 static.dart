class Calculator {
  // Static method for addition
  static int add(int a, int b) {
    return a + b;
  }

  // Static method for subtraction
  static int subtract(int a, int b) {
    return a - b;
  }

  // Static method for multiplication
  static int multiply(int a, int b) {
    return a * b;
  }

  // Static method for division
  static double divide(int a, int b) {
    return a / b;
  }
}

void main() {

    int no1 = 50;
    int no2 = 30;

  print("Addition: ${Calculator.add(no1,no2)}");   
  print("Subtraction: ${Calculator.subtract(no1,no2)}"); 
  print("Multiplication: ${Calculator.multiply(no1,no2)}"); 
  print("Division: ${Calculator.divide(no1,no2)}");

  return;
}
