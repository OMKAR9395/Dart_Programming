import 'dart:io';

void main()
{
  print("Enter a Color: ");
  String Color = stdin.readLineSync()!;

  print("--------------------------------------------------\n");
  switch(Color)
  {
    case "Red":
    {
      print("Please Stop Your Car/Bike");
      break;
    }
    case "Yellow":
    {
      print("Please Start Your Car/Bike And Wear Helmet\n");
      break;
    }
    case "Green":
    {
      print("Go To Your Destinition Thank You !!");
      break;
    }
    default :
    {
      print("Thanks For Using This Application Please Enter Correct Color");
      break;
    }
  }
  print("\n------------------------------------------------------------------------------------\n");
}