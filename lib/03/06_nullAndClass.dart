class Person {
  String? name;
  int? age;

  void display() {
    print("Name: $name\nAge: $age");
  }
}

// Оператор ! позволяет сказать что значение точно не будет null
class Password {
  String? text;

  String get() {
    if(text == null) {
      text = "qwerty";
    }

    // return text!;

    // Так же можно продолжать обращаться через точечную нотацию, к примеру
    return text!.toLowerCase();
  }
}

void main() {
  // Оператор ?
  // Позволяет проверять на null, и если переменная не равна ему, то будет происходить обращение к методам и полям, иначе просто обращение игнорируется
  Person? p1;
  p1?.name = "P1";
  p1?.age = 100;
  p1?.display();

  Person? p2 = Person();
  p2.name = "P2";
  p2.age = 200;
  p2.display();
}