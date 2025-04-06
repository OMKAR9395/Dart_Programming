import 'dart:io';

class ArithmeticCalc {
  void add() {
    int? sum = 0;

    stdout.write("Enter Count of Numbers: ");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      sum = sum! + No;
    }

    stdout.write("Addition of Numbers => $sum \n");
  }

  void sub() {
    int? sub = 0;

    stdout.write("Enter Count of Numbers: ");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        sub = No;
      } else {
        sub = sub! - No;
      }
    }

    stdout.write("Subtraction of Numbers => $sub\n");
  }

  void mult() {
    int? mult = 0;

    stdout.write("Enter Count of Numbers: ");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      int? No = int.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        mult = No;
      } else {
        mult = mult! * No;
      }
    }

    stdout.write("Multiplication of Numbers => $mult\n");
  }

  void div() {
    double? div = 0;

    stdout.write("Enter Count of Numbers: ");
    int? Count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= Count; i++) {
      stdout.write("Enter No $i => ");
      double? No = double.parse(stdin.readLineSync() ?? '1');

      if (i == 1) {
        div = No;
      } else {
        if (No == 0) {
          stdout.writeln("Cannot divide by zero.");
          return;
        }
        div = div! / No;
      }
    }

    stdout.write("Division of Numbers => $div\n");
  }
}

class Menu extends ArithmeticCalc {
 Menu() {
    while (true) {
      stdout.writeln("\nSelect Operation:");
      stdout.writeln("\t1) Addition");
      stdout.writeln("\t2) Subtract");
      stdout.writeln("\t3) Multiply");
      stdout.writeln("\t4) Divide");
      stdout.writeln("\t5) Exit");

      stdout.write("Enter your choice: ");
      int? choice = int.tryParse(stdin.readLineSync() ?? '');

      if (choice == null || choice <= 0) {
        break;
      } else {
        switch (choice) {
          case 1:
            add();
            break;
          case 2:
            sub();
            break;
          case 3:
            mult();
            break;
          case 4:
            div();
            break;
          case 5:
            stdout.write("Enter Yes to Exit: ");
            String? result = stdin.readLineSync();
            if (result == 'Yes' || result == 'yes') {
              exit(0);
            }
            break;
          default:
            stdout.writeln("Invalid Choice");
        }

        print("Thanks for visiting the application..!");
      }
    }
  }
}

void main() {
  Menu obj = new Menu();
 /// obj.Menu(); // Calls the method named Menu
}