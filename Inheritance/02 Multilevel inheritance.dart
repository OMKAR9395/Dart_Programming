import 'dart:io';

class Laptop {      /// Parent Class  of keyboard 
  String? brand;
  String? processor;

  Laptop() {    /// Parent Constructor
    stdout.writeln('================= Enter Laptop Details ==================');
  }

  void getDetails() {     /// Parent Method
    stdout.writeln('Enter Laptop Brand Name:');
    brand = stdin.readLineSync();

    stdout.writeln('Enter Laptop Processor Name:');
    processor = stdin.readLineSync();
  }
}

class Keyboard extends Laptop {     /// Child Class of Laptop And Parent Class of  Display
  String? keyBoard;
  String? backlight;

  Keyboard() {               /// Parent Constructor
    stdout.writeln('\n================ Enter Keyboard Details ================\n');
  }

  @override
  void getDetails() {     /// Parent Method
    super.getDetails();

    stdout.writeln('Enter Keyboard Type (Gaming / Normal):');
    keyBoard = stdin.readLineSync();

    stdout.writeln('Enter Backlight Type (RGB / White / Pink):');
    backlight = stdin.readLineSync();
  }
}

class Display extends Keyboard {    /// Child Class of keyboard
  String? screenSize;
  String? displayType;

  Display() {            /// child Constructor
    stdout.writeln('\n================ Enter Display Details ================\n');
  }

  @override
  void getDetails() {    /// Child method  
    super.getDetails();

    stdout.writeln('Enter Screen Size (14 inch, 15.6 inch):');
    screenSize = stdin.readLineSync();

    stdout.writeln('Enter Display Type (LED / OLED / LCD):');
    displayType = stdin.readLineSync();
  }

  void showDetails() {                /// Child method  
    stdout.writeln('\n================ Full Laptop Details Here ================');
    stdout.writeln('Brand           : $brand');
    stdout.writeln('Processor       : $processor');
    stdout.writeln('Keyboard Type   : $keyBoard');
    stdout.writeln('Backlight       : $backlight');
    stdout.writeln('Screen Size     : $screenSize');
    stdout.writeln('Display Type    : $displayType');
  }
}
void main() {     ///Entry point function
  Display obj = new Display();          /// object created Display 
  obj.getDetails();
  obj.showDetails();
}
