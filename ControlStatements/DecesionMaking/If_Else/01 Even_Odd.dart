import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync() ?? "");

  print("\n-----------------------------------------------\n");
  if (number % 2 == 0) {
    print("$number Number is Even.");
  } else {
    print("$number Number is Odd.");
  }
  print("\n---------------------------------------------\n");
}
