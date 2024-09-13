class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  // Геттеры, можно писать развернуто, сначала идет тип возвращаемого значение, потом слово get, и любое название для этого геттера, но желательно что бы оно совпадало с названием приватного поля, но без нижнего подчеркивания
  String get name {
    return _name;
  }

  // Так и через стрелочную функцию
  int get age => _age;


  // Сеттеры, специальный метод для установки значения, начинается с ключевого слова set, за которым идет название свойства и в круглых скобках ОДИН параметр, который является устанавливаемым значением
  set name(String value) {
    this._name = value.toLowerCase();
  }

  set age(int value) {
    if(value > 0 && value <= 100) {
      this._age = value;
    }
  }


  // Вычисляемые свойства, не представляют какое то конкретное значение поля, а вычисляются динамически
  bool get isChild => _age < 18;

  void display() {
    print("Name: $_name\nAge: $_age");
  }
}

void main() {
  Person p1 = Person("P1", 100);
  p1.display();

  print("GETTER - ${p1.name}");
  print("GETTER - ${p1.age}");

  p1.name = "Other name";
  p1.age = 2000;
  p1.display();
  p1.age = 20;
  p1.display();

  print("Is child - ${p1.isChild}");
}