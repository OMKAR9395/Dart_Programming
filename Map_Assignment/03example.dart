import 'dart:io';

void main() {
  Map<int, String> studentMap = {};
  
  studentMap[1] = "Omkar";
  studentMap[2] = "Amit";
  studentMap[3] = "Sneha";

  stdout.write("Student Records:");
  for (int i = 1; i <= studentMap.length; i++) {
    stdout.write("Roll No: $i, Name: ${studentMap[i]}");
  }

  int searchRoll = 2;
  int found = 0;
  for (int i = 1; i <= studentMap.length; i++) {
    if (i == searchRoll) {
      stdout.write("\nFound: Roll No: $i, Name: ${studentMap[i]}");
      found = 1;
      break;
    }
  }

  if (found == 0) {
    stdout.write("\nStudent with Roll No $searchRoll not found.");
  }

  int deleteRoll = 3;
  Map<int, String> newMap = {};
  for (int i = 1; i <= studentMap.length; i++) {
    if (i != deleteRoll) {
      newMap[i] = studentMap[i]!;
    }
  }

  studentMap = newMap;

  stdout.write("\n After Deletion:");
  for (int i = 1; i <= studentMap.length; i++) {
    stdout.write("Roll No: $i, Name: ${studentMap[i]}");
  }
}
