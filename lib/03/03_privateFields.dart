class Person {
  // Приватные поля обозначаются через нижнее подчеркивание
  String? _name;
  int? _age;

  Person(String name, int age) {
    this._name = name;
    this._age = age;
  }

  Person.myNotPrivateConstructor(String name, int age) : this._myPrivateConstructor(name, age);

  Person._myPrivateConstructor(String this._name, int this._age);

  void display() {
    _privateDisplay();
  }

  // Приватный метод
  void _privateDisplay() {
    print("Name: $_name\nAge: $_age");
  }
}

void main() {
  Person p1 = Person("P1", 100);
  p1.display();

  // Приватные поля сработают в том случае, если класс с приватными членами класса будет располагаться в отдельном файле или библиотеке (В данном случае не сработает, так как мы в одном файле все переопределяем)
  p1._age = 200;
  p1.display();
  p1._privateDisplay();

  Person p2 = Person.myNotPrivateConstructor("P2", 200);
  p2.display();
}
