void main() {
  // Можно делать nullable типы для переменных
  String? someString1;
  int? someNumber1;


  // Можно воспользоваться ??
  // Если первое значение не null, то будет возвращено первое значение
  // Иначе второе
  String someString2 = someString1 ?? "WAS NULL";
  int someNumber2 = someNumber1 ?? 100;

  // Есть еще сокращенная форма ??
  // Если переменная будет null, то присвоим значение
  bool? someBool1;
  someBool1 ??= false;
}