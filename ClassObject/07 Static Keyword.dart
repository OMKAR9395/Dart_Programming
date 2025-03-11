class Car {
  static int totalCars = 10;     //Static variable
  String brand;

 
  Car(this.brand)   // Constructor Parameterized     
  {
    print(this.brand);
    
    int brand = 10;
    print('We Are Inside Of Constructor ${this.brand}');

    print('We Are Inside Of Constructor $brand');
  }
  // Car(int a ,int b)   // Constructor Two Parameterized      
  // {
  //   print(this.brand);
    
  //   int brand = 10;
  //   print('We Are Inside Of Constructor ${this.brand}');

  //   print('We Are Inside Of Constructor $brand');
  // }

  // Car(){                        // Default Constructor
  //   print("Default Constructor");
  // }

  static void showTotalCars() //static Function
  {
    print("Total Cars: $totalCars");
  }
   
}

void main() 
{
  Car car1 = new Car("Tesla");     // Single Parameterized object
  Car car2 = new Car("BMW");       // Single Parameterized object
  // Car car3 = new Car ();           // Default object created
  // Car Car4 = new Car(10,20);       // Two Parameterizes Objecy

  print('We Are Inside Of Main ${car1.brand}');
  print('We Are Inside Of Main ${car2.brand}');

  // car1.showTotalCars();        //Cannot Acces  with object because ShowTotalCars function is Static
  // car2.showTotalCars();        //Cannot Acces  with object because ShowTotalCars function is Static

  Car.showTotalCars();            // Access With Class Name Static Functions And Variables
  print(Car.totalCars);          // Access With Class Name Static Functions And Variables 
}
