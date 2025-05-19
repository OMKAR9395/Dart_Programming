import 'dart:io';

class StudentManager {
  Map<int, String> students = {};

  void addStudent(int rollNo, String name) {
    students[rollNo] = name;
    stdout.write(" Student Added: $rollNo - $name");
  }

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

  void searchStudent(int rollNo) {
    if (students.containsKey(rollNo)) {
      stdout.write("Found: Roll No: $rollNo, Name: ${students[rollNo]}");
    } else {
      stdout.write("No student found with Roll No: $rollNo");
    }
  }

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

  manager.addStudent(101, "Omkar");
  manager.addStudent(102, "Amit");
  manager.addStudent(103, "Sneha");

  manager.showStudents();

  manager.searchStudent(102);

  manager.removeStudent(101);

  manager.showStudents();
}
