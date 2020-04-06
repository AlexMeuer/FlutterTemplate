import 'package:flutter_template/core/ioc/module.dart';

//part 'core_module.g.dart';
//
//abstract class CoreModule extends Module {
//  CoreModule();
//  factory CoreModule.create() => _$CoreModule();
//
//  void register() {
//    Container().registerSingleton((c) => Uuid(
//          options: {'grng': UuidUtil.cryptoRNG},
//        ));
//
//    registerGenerated();
//  }
//
//  @Register.singleton(FirebaseAnalytics)
//  void registerGenerated();
//}

class CoreModule extends Module {
  CoreModule._();
  factory CoreModule.create() => CoreModule._();
  @override
  void register() {}
}
