class Person 
{
  String name;
  int age;


  Person(this.name, this.age);

void display() 
  {
    print("Name: $name Age: $age");
  }
}

void main() 
{
  Person p1 = Person("Patil", 24);
  p1.display();
}
