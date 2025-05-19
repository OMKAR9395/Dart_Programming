void main() {
  Map<String, String> myMap = {
    'name': 'Omkar',
    'city': 'Pune',
  };

  // add new key-value
  myMap['email'] = 'omkar@gmail.com';

  // update value
  myMap['city'] = 'Karad';

  // remove()
  myMap.remove('email');

  // containsKey / containsValue
  print(myMap.containsKey('name')); // true
  print(myMap.containsValue('Karad')); // true

  // keys & values
  print(myMap.keys);   // (name, city)
  print(myMap.values); // (Omkar, Karad)

  // length
  print(myMap.length); // 2

  // isEmpty / isNotEmpty
  print(myMap.isEmpty); // false

  // clear()
  myMap.clear();
  print("Map after clear: $myMap"); // {}

}
