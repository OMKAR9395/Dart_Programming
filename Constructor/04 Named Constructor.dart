class Calculator {
  double num1;
  double num2;

  Calculator.addition(this.num1, this.num2) {
    double sum = num1 + num2;
    print("Addition: $sum");
  }
}

void main() {
  // Creating object using the named constructor
  Calculator.addition(10, 20); 
}
