class Calc {
  static int count = 0;  // Static variable
  
  void increment(){
    count++; // Accessing static variable
  }
}

//  static double pi = 3.14;      // static variables create in only class

void main() {
      print(Calc.count); // Accessing static variable without object
  
      Calc obj1 = new Calc();     // creating object
      obj1.increment();           // method call
  
      print(Calc.count); // Static value print
  //  print(obj1.count);  // Stativ variables cannot access with object And its access with class name 

      Add();              // Function Call
      print(Calc.count);    //10
}
void Add(){
  Calc.count=10;
  
}