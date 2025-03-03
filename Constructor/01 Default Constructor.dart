class Bike {
  String brand = "KTM";
  String model = "Duke 250";

  // Default Constructor
  Bike() {
    print("We Are Inside Of Constructor");
  }

  void display() {
    print("Brand: $brand \nModel: $model");
  }
}

void main() {
  Bike Obj = Bike();
  Obj.display();
}
