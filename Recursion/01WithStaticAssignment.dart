class MathUtil {
  static int callCount = 0; // Static variable to count recursive calls

  static int factorial(int n) {
    callCount++; // Increments on every call
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
}

void main() {
  int number = 5;
  int result = MathUtil.factorial(number);
  
  print("Factorial of $number is $result");
  print("Recursive calls made: ${MathUtil.callCount}");
}
