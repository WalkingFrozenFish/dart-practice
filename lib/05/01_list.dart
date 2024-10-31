void main() {
  // Список
  var list1 = [];
  var list2 = [1, 2, 3];
  List<int> list3 = [1, 2, 3];

  print("List 1 - $list1");
  print("List 3 - $list2");
  print("List 3 - $list3");

  print("=========================");

  print("Element from list 3 - ${list3[1]}");

  print("First element - ${list3.first}");
  print("Last element - ${list3.last}");
  print("Is empty - ${list3.isEmpty}");
  print("Is not empty - ${list3.isNotEmpty}");
  print("List 3 length - ${list3.length}");
  print("List 3 reversed - ${list3.reversed}");


  print("=========================");

  print("From for cycle");
  for(int i = 0; i < list3.length; i++) {
    print("Element ${list3[i]} from list3");
  }

  print("From for in cycle");
  for(var item in list3) {
    print("Item - $item");
  }

  print("From for each cycle");
  list3.forEach((item) => print("Item - $item"));

  print("=========================");


  print("Add element");
  list3.add(4);
  print("List3 - ${list3}");

  print("Add list in list");
  list3.addAll([5, 6, 7]);
  print("List3 - ${list3}");

  print("Insert into")
}