import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/blocs/example/example_bloc.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ExampleBloc, ExampleState>(
          builder: (ctx, state) {
            return const Text("Hello World");
          },
        ),
      ),
    );
  }
}
