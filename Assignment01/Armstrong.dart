import 'dart:io';
class Armstrong {
  bool checkArmstrong(int value) {
        if (value < 0) {
          stdout.writeln("You Entered Negative number please Enter Positive Integer.");
          return false;
        }

    int count = 0, temp = value;

              while (temp != 0) {
                count++;
                temp = temp ~/ 10;
              }
        if (count != 3 && count != 4) {
          stdout.writeln("Enter a valid 3 or 4-digit number.");
          return false;
        }
        
    int copy = value, sum = 0, digit = 0;

            while (value != 0) {

              digit = value % 10;
              int power = 1;

                    for (int i = 0; i < count; i++) {
                      power *= digit;
                    }

              sum += power;
              value = value ~/ 10;
            }

    return sum == copy;

  }
}

void main() {
  stdout.write("Enter a number to check if it's Armstrong: ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null) {
    stdout.writeln("Invalid input! Please enter an integer.");
    return;
  }

  Armstrong obj = new Armstrong();
  bool result = obj.checkArmstrong(number);

  if (result) {
    stdout.writeln("$number is an Armstrong number.");
  } else {
    if (number > 0 && (number >= 100 && number <= 9999)) {
      stdout.writeln("$number is NOT an Armstrong number.");
    }
  }
}
