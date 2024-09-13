void main() {
  // Обычное объявление переменной
  String firstName = "First name";
  String lastName = "Last name";

  // Можно определить переменную с неизвестным типом
  var age = 100;
  age = 200;

  // Переменная которой можно присвоить разные типы данных
  dynamic job = "yes";
  job = false;
  job = 123;

  // Можно определить переменную которую в процессе работы нельзя поменять
  // const должен быть определен при компиляции, то есть сразу
  const children = "no";

  // final должен быть определен во время выполнения программы
  // В данном случае вычисление переменной будет срабатывать во время работы программы
  final dateOfBirth = DateTime.now();

  // При определении констант не обязательно указывать типы данных
}