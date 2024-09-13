void main() {
  if (1 < 2) {
    print("First");
  } else {
    print("Second");
  }

  if("Str" != "Str2") {
    print("First");
  } else if ("Str" == "Str2") {
    print("Second");
  } else {
    print("Third");
  }

  // break не обязателен в case
  // default не обязателен
  int someNum = 1;
  switch(someNum){
    case 1:
      print("1");
    case 2:
      print("2");
    default:
      print("Default");
  }

  // Можно делать переходы с одного case на другой
  // Надо только указать метку
  switch(someNum){
    C1: case 1:
      print("1");
      continue C2;
    C2: case 2:
      print("2");
      continue D;
    D: default:
      print("Default");
  }
}