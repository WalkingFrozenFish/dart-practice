class Person {
  String? name;
  int? age;

  // Конструктор (Общий)
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Сокращенный конструктор (Именованный)
  Person.second(String this.name, int this.age);

  // Именованный конструктор
  Person.third(String this.name, int age) {
    this.age = age + 1000;
  }

  // Примеры цепочек конструкторов, каждый из которых будет вызывать другой (Как super в ts) То есть передача параметров из вызываемого конструктора в другой
  Person.one(String name) : this(name, 666);
  Person.two(int age) : this("DEFAULT NAME", age);

  // Обязательные параметры в конструкторе
  Person.three({required this.name, this.age = 0});

  // Просто проверка что можно комбинировать именованные, простые и не обязательные параметры
  Person.four(int someNum, {required this.name, required this.age});
  Person.five(int someNum, [this.name, this.age]);
  // Person.six(int someNum, [String? text], {required this.name, required this.age}); // Ошибка, не комбинируется, может что то делаю не так

  void display() => print("Name: $name\nAge: $age\n\n\n======================\n");
}

void main() {
  // Общий конструктор
  Person p1 = Person("NAME1", 100);
  p1.display();

  // Именованный конструктор
  Person p2 = Person.second("NAME2", 200);
  p2.display();

  Person p3 = Person.third("NAME3", 1);
  p3.display();

  Person p4 = Person.one("Devil");
  p4.display();

  Person p5 = Person.two(5000);
  p5.display();

  Person p6 = Person.three(name: "REQUIRED_NAME_1");
  p6.display();

  Person p7 = Person.three(name: "REQUIRED_NAME_2", age: 200);
  p7.display();
  
  Person p8 = Person.four(100, name: "SOME_NAME", age: 4);
  p8.display();

  Person p9 = Person.five(2000);
  p9.display();
}