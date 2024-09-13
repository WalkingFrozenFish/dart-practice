void main() {
  // Можно присваивать функции без имени
  Function someFunc = (Function f) {
    int num = 1;
    print("Some anon func");
    print("Text");
    f();
    return num;
  };

  someFunc((){
    print(1);
    print(1);
    print(1);
    print(1);
  });

  someFunc(() => print("123123"));
}