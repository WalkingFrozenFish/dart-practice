void main() {
  try {
    Person tom = Person("Tom", -45);
    print(tom.age);
  }
  on AgeException catch(e) {
    print(e);
    print(e.value);
    // print(e.toString());
  } on Exception catch (e) {
    print(e);
  }
}

class Person {
  String name;
  int age = 1;

  Person(this.name, age) {
    if (age < 1 || age > 110) {
      // Оператор throw позволяет нам самим сгенерировать исключение в необходимом месте
      // throw Exception("Недопустимый возраст");
      throw AgeException(age);
    }

    this.age = age;
  }
}

// Можно так же создавать свои исключения
class AgeException implements Exception {
  int value;

  AgeException(this.value);

  @override
  String toString() => "Не допустимый возраст";
}
