void main() {
  // Области видимости. Так же как и в js, изнутри видно что снаружи, но не на оборот

  int globalNum = 100;

  if(true) {
    int localIfNum = 200;

    print(globalNum);
    print(localIfNum);
  }

  // Ошибка
  // print(localIfNum);
}