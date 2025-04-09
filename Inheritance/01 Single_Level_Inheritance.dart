import 'dart:io';

class Laptop {          ///   parent Class 
   String? brand;
   String? processor;

Laptop(){   /// Parent Constructor
    stdout.writeln('================= Fork Infosystem==================');
  }
  void getDetails(){      ///parent Methods

  stdout.writeln('Enter Laptop Brand Name : ');     /// Get Input
  brand  = stdin.readLineSync();

  stdout.writeln('Enter Laptop Processor Name : '); /// Get Input
  processor  = stdin.readLineSync();
  }
}
class Keyboard extends Laptop {     /// Child Class

  String? keyBoard;      
  String? backlight; 
  @override
 void getDetails(){        ///    Child Method

  super.getDetails();     /// Calling Parent Method

  stdout.writeln('Enter Laptop Keyboard Name :(gaminng / Normal ) ');   /// Get Input
  keyBoard  = stdin.readLineSync();

  stdout.writeln('Enter Laptop Backlight Name : (Rgb / White / Pink)'); /// Get Input
  backlight  = stdin.readLineSync();
 }

  Keyboard(){       ///Child Constructor 
    stdout.writeln('================ Enter Details You Have ==============\n');
  }

 void showDetails(){    /// Child method  Showing All Inputs
  stdout.writeln('Your Laptop Name is $brand And There Processor is $processor Your Laptop Have $keyBoard and Backlight is $backlight');    
 }
}
void main() {       /// entry point function
  Keyboard obj1 = new Keyboard(); /// object created child

  obj1.getDetails();      /// method calling
  obj1.showDetails();   /// method calling

}
