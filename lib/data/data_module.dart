import 'package:flutter_template/core/ioc/module.dart';
import 'package:flutter_template/data/repositories/example_repository.dart';
import 'package:flutter_template/domain/repositories/example_repository.dart';
import 'package:kiwi/kiwi.dart';

part 'data_module.g.dart';

abstract class DataModule extends Module {
  DataModule();
  factory DataModule.create() => _$DataModule();

  @Register.singleton(ExampleRepository, from: FooExampleRepository)
  void register();
}
