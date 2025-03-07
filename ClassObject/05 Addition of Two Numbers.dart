class Calculator 
{
  int add(int a, int b) 
  {
    return a + b;
  }
}

void main() 
{
  Calculator calc = new Calculator();
  int sum = calc.add(10, 20);
  print("Sum of two Numbers Is : $sum");
}
