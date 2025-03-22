
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}

void main() {           /// Entry Point Function
  Calculator calc = new Calculator();           /// Creating Innstance of Class
  print("Sum of Two Numbers: ${calc.add(10, 20)}");   ///Calling Function 
  print('${Calculator()}');                           ///Creating Instance Without getting memory

  print(Calculator().runtimeType);                ///C
  print('${ new Calculator()}');
  print(calc);
}
