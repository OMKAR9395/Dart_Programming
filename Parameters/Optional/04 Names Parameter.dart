void greet({String? name, int? age}) {
  print("Hello, my name is $name and I am $age years old.");
}

void main() {
  greet(age: 25,name: "Alice"); // Using named parameters
}
