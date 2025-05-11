import 'dart:io';


class FactorialCalculator {
  int factorial(int n) {
    return (n <= 1) ? 1 : n * factorial(n-1);         ///using turnery Operator And Condition if else
  }
}

void main() {     ///entry point function

  stdout.write("Enter a number: ");                 ///user input valuue
  int num = int.parse(stdin.readLineSync() ?? '0');


  FactorialCalculator obj = new FactorialCalculator();      ///creating object     
  int result = obj.factorial(num);              ///Calling method 

  print("Factorial of $num is $result");
}
