import 'package:flutter_template/core/ioc/module.dart';
import 'package:flutter_template/domain/use_cases/user_requests_example/user_requests_example.dart';
import 'package:kiwi/kiwi.dart';

part 'domain_module.g.dart';

abstract class DomainModule extends Module {
  DomainModule();
  factory DomainModule.create() => _$DomainModule();

  @Register.factory(UserRequestsExample)
  void register();
}
