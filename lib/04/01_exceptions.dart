void main() {
  try {
    // Код который может привести к исключению
    int x = 9;
    int y = 0;
    int z = x ~/ y;

    print(z);
  } on UnsupportedError {
    // Обработка конкретного исключения
    print("Возникло исключение в блоке on");
  } catch (e, s) {
    // Обработка остальных исключений
    print("ERROR: \nВозникло исключение в блоке catch - $e");
    print("STACKTRACE: \nВозникло исключение в блоке catch - $s");
  } finally {
    // Блок который всегда будет выполняться
    print("Выполнение блока finally");
  }

  print("Завершение метода main");
}