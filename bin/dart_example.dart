import 'package:dart_example/03/03_privateFields.dart';
import 'package:dart_example/dart_example.dart' as dart_example;

void main(List<String> arguments) {
  print('Hello world: ${dart_example.calculate()}!');

  Person p1 = Person("NAME", 100);
  p1.display();
}
