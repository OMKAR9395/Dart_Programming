import 'dart:io';

/// Parent Class
class Electronics {
  String? brand;

  Electronics() {     ///constructor

    stdout.writeln("Enter Brand Name: (Laptop / Mobile)");
    brand = stdin.readLineSync();

  }
}

///  Child Class of Electronics
class Laptop extends Electronics {
  String? processor;

  Laptop() : super() {    ///calling parent constructor
    stdout.writeln("Enter Laptop Processor: (i5,i3,i7)");
    processor = stdin.readLineSync();
  }
}

///  Child Class of Electronics
class Mobile extends Electronics {
  String? os;

  Mobile() : super() {      ///calling parent constructor
    stdout.write("Enter Mobile Operating System: (Android/Ios/windows)");
    os = stdin.readLineSync();
  }

  void showMobile() {     ///method
    stdout.writeln("Your Mobile Brand Name Is: $brand And There Operating System is $os");
   
  }
}

/// Grandchild Class of Electronics
class GamingLaptop extends Laptop {
  String? gpu;

  GamingLaptop() : super() {    ///calling parent constructor
    stdout.writeln("Enter GPU for Gaming Laptop: (NVIDIA / Ryzen /Amd)");
    gpu = stdin.readLineSync();
  }

  void showGamingLaptop() {       ///method
    stdout.writeln("Your Gaming Laptop Brand Name is $brand With $processor Processor And Graphic Card Name Is $gpu");
  }
}

void main() {     /// ENTRY POINT FUNCTION
  stdout.writeln("========== Enter Gaming Laptop Details ===========");

  GamingLaptop obj1 = GamingLaptop();
  obj1.showGamingLaptop();        ///method calling

  stdout.writeln("============= Enter Mobile Details ===============");

  Mobile obj2 = Mobile();
  obj2.showMobile();          ///method calling
}
