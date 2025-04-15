void main() {
    print(add("10","-"));
    print('Done...');
}

int add(String a, String b) {
  int retVal = 0;
  try { 
    retVal = int.parse(a) + int.parse(b);
  } catch (e) {

    retVal = int.parse(a) + int.parse("0");  
    print("Exception in add() : $e");
  }

  return retVal;
}