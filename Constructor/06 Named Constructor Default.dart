class Person {
  String name;
  int age;

  Person.namedConstructor(this.name ,this.age) {
    this.name = name;
    this.age = 18;
  }

  void display() {
    print("Name: $name, Age: $age");
  }
}

void main() {

  // Using named constructor
  Person p2 = Person.namedConstructor("Alice",10);
  p2.display();
}
