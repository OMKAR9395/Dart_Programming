import 'dart:io';

class Palindrome {
  int num;
  int rev = 0;

  Palindrome(this.num); ///constructor parameterized

  void checkPalindrome() {      ///method
    int temp = num;
    int dig;
    rev = 0;

    while (temp > 0) {
      dig = temp % 10;
      rev = (rev * 10) + dig;
      temp = temp ~/ 10; // integer division
    }

    if (rev == num) {
      print("\n$num is a Palindrome.");
    } else {
      print("\n$num is Not Palindrome.");
    }
  }
}

void main() {
  stdout.write("Enter a Number: ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null || number < 0) {
    print("Please enter a valid positive integer.");
    return;
  }

  Palindrome obj = new Palindrome(number);
  obj.checkPalindrome();
}
