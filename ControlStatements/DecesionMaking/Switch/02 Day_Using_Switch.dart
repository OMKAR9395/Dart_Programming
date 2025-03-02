import 'dart:io';

void main()
{
  print("Enter a Day: ");
  int?Number = int.parse(stdin.readLineSync()??"8");

  print("\n--------------------------------------------------\n");
  switch(Number)
  {
    case 1:
    {
      print("This Is Sunday");
      break;
    }
    case 2:
    {
      print("This Is Monday");
      break;
    }
    case 3:
    {
      print("This Is Tuesday");
      break;
    }
    case 4:
    {
      print("This Is Wedensday");
      break;
    }
    case 5:
    {
      print("This Is Thurseday");
      break;
    }
    case 6:
    {
      print("This Is Friday");
      break;
    }
    case 7:
    {
      print("This Is Saturday");
      break;
    }
    default :
    {
      print("Please Enter a Valid Number");
      break;
    }
  }
  print("\n--------------------------------------------------------\n");
}