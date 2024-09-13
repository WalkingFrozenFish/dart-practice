class Person {
  // Просто поле
  String name = "";

  // Можно так же делать nullable поля
  int? age;

  // Метод
  void display() {
    print("Name: $name \tAge: $age");
  }
}

void main() {
  // Создание объекта с конструктором который создается по умолчанию
  Person p1 = Person();
  p1.display();

  Person p2 = Person();
  p2.age = 100;
  p2.name = "Some name";
  p2.display();

  // Каскадная нотация, можно обращаться к полям объекта
  Person p3 = Person()
  ..name = "NAME"
  ..age = 200
  ..display();
}