import 'package:built_collection/built_collection.dart';
import 'package:flutter_template/domain/entities/example.dart';

class ExampleDataSource {
  Future<BuiltSet<Example>> fetchAll() async {
    await Future.delayed(const Duration(seconds: 1));
    return BuiltSet.of([]);
  }
}
