class Dart {
  static int count = 0;  // Static variable

  int? No1;     //class Variables
  int? No2;

  
  Dart(){                     //      default constructor
    print("We Are Inside Of Constructor");
    print("$No1 $No2");

    count = 45;             
  }

  // void Addition(No1,No2){
  //   count = No1 + No2;              // This Variables are only functional variables
  // }

  // void Addition(No1,No2){

  //   this.No1 = No1;                   // Class Variables assigning value of functional variables
  //   this.No2 = No2;

  //   count = No1 + No2;              // This Variables are only functional variables
  // }

 static int Addition(A,B){         // Static methods

    //  this.No1 = A;         //  static methods cannot access class variables using this keyword or without this keyword 
    //  this.No2 = B;
  
    count = 10;               //  static variables can access static method

  return A +B;
}
}


void main() {

      int? Sum;
      print(Dart.count);
  
      Dart obj1 = new Dart();  

      //    obj1.Addition(20,40);     // method call

      Sum =  Dart.Addition(50,70);      // Static Method Call

      print(obj1.No1);     
      print(obj1.No2);
      print(Dart.count);   
      print(Sum);  
  

}
