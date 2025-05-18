import 'dart:io';

class PrimeChecker {
  int number = 0;

  void getInput() {
    stdout.write("Enter a number: ");
    number = int.parse(stdin.readLineSync()!);

    if (number < 0) { ///handle negative value
      number = -number;
    }
    
  }
  void checkPrime() {
    int i = 2;

    if (number == 0 || number == 1) {
      stdout.write("Number is Neutral (neither Prime nor Not Prime)");
      return;
    }

    while (i < number) {
      if (number % i == 0) {
        break;
      }
      i++;
    }
    if (i == number) {
      stdout.write(" $number is Prime");
    } else {
      stdout.write("$number is Not Prime");
    }
  }
}

void main() {
  PrimeChecker obj = new PrimeChecker();
  obj.getInput();
  obj.checkPrime();
}
