import 'dart:io';

class Fact {
  static int callCount = 0;           /// Static variable to count recursive calls

  static int factorial(int n) {       /// Static Method
    callCount++;       /// Increments on every call

    if (n == 0 || n == 1) {         /// Condition Check
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
}

void main() {           ///Entry point Fuunction
  int number = 5;         /// variable
  int result = Fact.factorial(number);   ///Calling method factorial and assigning result variable
  
  stdout.writeln("Factorial of $number is $result");       ///Printing Values 
  stdout.writeln("Recursive calls made: ${Fact.callCount}");     ///Printing Values static variable
}
