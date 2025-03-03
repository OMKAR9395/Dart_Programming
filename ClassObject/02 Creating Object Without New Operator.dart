class Bike {
  String brand = "KTM";             // Properties (Instance Variables)
  String model = "Duke 250";

  void displayInfo() {

    print("Bike Brand: $brand");      // Method (Function inside a class)
    print("Bike Model: $model");
  }
}

void main() {               //Entry Point Function
  Bike myBike = Bike();
  
  myBike.displayInfo();

  print(myBike.brand);
  print(myBike.model);
}
