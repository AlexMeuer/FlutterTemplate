import 'package:built_value/built_value.dart';

part 'example.g.dart';

abstract class Example implements Built<Example, ExampleBuilder> {
  int get Id;

  Example._();

  factory Example([void updates(ExampleBuilder)]) = _$Example;
}
