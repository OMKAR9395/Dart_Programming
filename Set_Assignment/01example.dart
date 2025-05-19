void main() {
  Set<int> mySet = {10, 20, 30};

  // add()
  mySet.add(40);

  // addAll()
  mySet.addAll([50, 60]);

  // remove()
  mySet.remove(20);

  // contains()
  print(mySet.contains(30)); // true

  // length
  print(mySet.length); // 5

  // isEmpty / isNotEmpty
  print(mySet.isEmpty);    // false
  print(mySet.isNotEmpty); // true

  // clear()
  mySet.clear();
  print(mySet); // {}

  // Example output
  print("Final Set: $mySet");
}
