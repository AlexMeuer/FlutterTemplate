import 'package:fluro/fluro.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/blocs/bloc_factory.dart';
import 'package:flutter_template/presentation/blocs/example/example_bloc.dart';
import 'package:flutter_template/presentation/pages/example_page.dart';

extension RouterExtensions on Router {
  void defineRoutes(BlocFactory blocFactory) {
    define(
      "/",
      handler: Handler(
        handlerFunc: (ctx, params) => BlocProvider<ExampleBloc>(
          create: blocFactory.create,
          child: ExamplePage(),
        ),
      ),
    );
  }
}
