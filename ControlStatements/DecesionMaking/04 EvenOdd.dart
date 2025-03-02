import 'dart:io';

void main()
{
  print("Enter a Number To Check Its Even Or Odd: ");
 int?Number = int.parse(stdin.readLineSync()??"");

  print("\n--------------------------------------------------\n");
  switch(Number %2)
  {
  case 0:
      {
      print("$Number  Numner is Even");
      break;
      }
    case 1:
      {
      print("$Number Number is Odd");
      break;
      }
    default:
      {
        print("Invalid Number Please Enter Correct Numberr.");
        break;
      }

  }
  print("\n-------------------------------------------------\n");
}