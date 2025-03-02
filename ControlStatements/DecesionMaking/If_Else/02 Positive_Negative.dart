import 'dart:io';

void main() 
{
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync() ?? "");

  print("\n-----------------------------------------------\n");
  if (number > 0) 
  
  {
    print("$number Number is Positive.");
  } 
  else if (number < 0) 
  {
    print("$number Number is Negative.");
  } 
  else 
  {
    print("$number Number is Zero.");
  }
  print("\n---------------------------------------------\n");
}
