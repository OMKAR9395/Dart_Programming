import 'dart:io';

class Addition {
  int? count, sum;

  Addition() {
    count=0;
    sum=0;
  }
  void add(){
    stdout.writeln('Enter how many numbers you want to add: ');
    count = int.parse(stdin.readLineSync() ?? '0');

     for (int? i = 1; i! <= count!; i++){

      stdout.write('Enter number $i: ');
      int? temp = int.parse(stdin.readLineSync() ?? '0');
      
      sum = sum! + temp;
    }
    stdout.writeln('\nTotal Of $count Sum  is = $sum');
  }
}
class Subtraction extends Addition{
  num? result;

  Subtraction() {
    result = 0;
  }

  void subtract() {

    stdout.write('Enter how many numbers you want to subtract: ');
    count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= count!; i++) {
      stdout.write('Enter number $i: ');
      int temp = int.parse(stdin.readLineSync() ?? '0');

      if (i == 1) {
        result = temp; 
      } else {
        result = result! - temp;
      }
    }

    stdout.writeln('\nSubtraction of $count numbers is = $result');
  }
}
class Multiplication extends Subtraction{

  int? product;

  Multiplication(){
    product = 0;
  }

  void multiply() {

    stdout.write('Enter how many numbers you want to multiply: ');
    count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= count!; i++) {
      stdout.write('Enter number $i: ');
      int temp = int.parse(stdin.readLineSync() ?? '1');

      if (i == 1) {
        product = temp;
      } else {
        product = product! * temp;
      }
    }

    stdout.writeln('\nMultiplication of $count numbers is = $product');
  }
}
class Division extends Multiplication {

  void divide() {
    stdout.write('Enter how many numbers you want to divide: ');
    count = int.parse(stdin.readLineSync() ?? '0');

    for (int i = 1; i <= count!; i++) {
      stdout.write('Enter number $i: ');
      double temp = double.parse(stdin.readLineSync() ?? '1');

      if (i == 1) {
        result = temp; 
      } else {
        if (temp == 0) {
          stdout.writeln('Cannot divide by zero');
          continue;
        }
        result = result! / temp;
      }
    }

    stdout.writeln('\nDivision result of $count numbers is = $result');
  }
}
void main() {

  Division obj = new Division();

  while(true){
    stdout.writeln('=============== Choose an operation ==============');

    stdout.writeln('\t1. Addition');
    stdout.writeln('\t2. Subtraction');
    stdout.writeln('\t3. Multiplication');
    stdout.writeln('\t4. Division');
    stdout.writeln('\t5. Exit');

     stdout.write('Please Enter Your Choice: ');
     String? choice = stdin.readLineSync();

     if (choice == '5') {
      break;
    }
     switch (choice) {
      case '1':
       obj.add();
        break;
      case '2':
        obj.subtract();
        break;
      case '3':
        obj.multiply();
        break;
      case '4':
       obj.divide();
        break;
      default:
      stdout.writeln('Invalid choice. Please select a valid option');
    }
  }
stdout.write('=============== Thanks For Using Our Application. ==============');
 
}
