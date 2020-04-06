import 'package:fluro/fluro.dart';
import 'package:flutter_template/core/ioc/module.dart';
import 'package:flutter_template/domain/use_cases/user_requests_example/user_requests_example.dart';
import 'package:flutter_template/presentation/blocs/bloc_factory.dart';
import 'package:flutter_template/presentation/blocs/example/example_bloc.dart';
import 'package:flutter_template/presentation/router.dart';
import 'package:flutter_template/presentation/routes.dart';
import 'package:kiwi/kiwi.dart';

part 'presentation_module.g.dart';

abstract class PresentationModule extends Module {
  PresentationModule();
  factory PresentationModule.create() => _$PresentationModule();

  void register() {
    registerGenerated();

    final container = Container();
    container.registerInstance(BlocFactory(container));
    container.registerSingleton<Router, ModifiedRouter>(
        (c) => ModifiedRouter()..defineRoutes(c<BlocFactory>()));
  }

  @Register.factory(ExampleBloc)
  void registerGenerated();
}
