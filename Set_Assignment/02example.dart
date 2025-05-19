import 'dart:io';

class StudentManager {
  // Declare Map to store student data (Roll Number => Name)
  Map<int, String> students = {};

  // Add a student
  void addStudent(int rollNo, String name) {
    students[rollNo] = name;
    stdout.write(" Student Added: $rollNo - $name");
  }

  // Display all students
  void showStudents() {
    if (students.isEmpty) {
      stdout.write("No student records found.");
    } else {
      stdout.write("\n Student Records:");
      students.forEach((roll, name) {
        stdout.write("Roll No: $roll, Name: $name");
      });
    }
  }

  // Search a student by roll number
  void searchStudent(int rollNo) {
    if (students.containsKey(rollNo)) {
      stdout.write("Found: Roll No: $rollNo, Name: ${students[rollNo]}");
    } else {
      stdout.write("No student found with Roll No: $rollNo");
    }
  }

  // Remove a student
  void removeStudent(int rollNo) {
    if (students.remove(rollNo) != null) {
      stdout.write("Student with Roll No $rollNo removed.");
    } else {
      stdout.write(" No student found with Roll No: $rollNo");
    }
  }
}
void main() {
  StudentManager manager = new StudentManager();

  // Add students
  manager.addStudent(101, "Omkar");
  manager.addStudent(102, "Amit");
  manager.addStudent(103, "Sneha");

  // Display students
  manager.showStudents();

  // Search student
  manager.searchStudent(102);

  // Remove a student
  manager.removeStudent(101);

  // Display again
  manager.showStudents();
}
