import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/core/core_module.dart';
import 'package:flutter_template/data/data_module.dart';
import 'package:flutter_template/domain/domain_module.dart';
import 'package:flutter_template/presentation/app.dart';
import 'package:flutter_template/presentation/presentation_module.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  CoreModule.create().register();
  DataModule.create().register();
  DomainModule.create().register();
  PresentationModule.create().register();

  final c = kiwi.Container();

  runApp(App(
    router: c<Router>(),
  ));
}
