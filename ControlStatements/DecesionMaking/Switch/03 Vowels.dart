import 'dart:io';

void main()
{
  print("Enter a Letter To Check  Its Vowel Or Not: ");
  String Letter = stdin.readLineSync()!;

  print("\n--------------------------------------------------\n");
  switch(Letter)
  {
   case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
     {
      print("This is a vowel Letter.");
      break;
     }
    case 'b':
    case 'c':
    case 'd':
    case 'f':
    case 'g':
    case 'h':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'p':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'v':
    case 'w':
    case 'x':
    case 'y':
    case 'z':
     {
      print("This is a consonant Letter.");
      break;
     }
    default:
     {
       print("Invalid input! Please enter a single letter.");
     }

  }
  print("\n-------------------------------------------------\n");
}