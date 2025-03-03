class Bike {
  final String brand;
  final String model;

  const Bike(this.brand, this.model);
}

void main() {
  const Bike bike1 = Bike("KTM", "Duke 250");
  const Bike bike2 = Bike("KTM", "Duke 250");

  print("Bike 1: ${bike1.brand}, ${bike1.model}");
  print("Bike 2: ${bike2.brand}, ${bike2.model}");

  print("Are both objects the same? ${bike1 == bike2}"); // true
}
