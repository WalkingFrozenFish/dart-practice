void main() {
  // Есть типы данных
  bool someBool = true;
  int someNumber = 100;
  double someNum = 1.2;

  String justString = "Some text";
  String multilineString = """
    Some text
    And
    Other text
  """;

  String someResult = "$multilineString, $justString";
  print(someResult);
}