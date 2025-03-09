class Car {
  static int totalCars = 0;
  String brand;

  Car(this.brand) 
  {
    totalCars++;
  }

  static void showTotalCars() 
  {
    print("Total Cars: $totalCars");
  }
}

void main() 
{
  Car car1 = Car("Tesla");
  Car car2 = Car("BMW");

  Car.showTotalCars(); 
}
