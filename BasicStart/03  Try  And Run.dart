
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}

void main() {
  Calculator calc = new Calculator();
  print("Sum of Two Numbers: ${calc.add(10, 20)}");
  print('${Calculator()}');
  print(Calculator().runtimeType);
  print('${ new Calculator()}');
  print(calc);
}
