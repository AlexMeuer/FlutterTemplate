import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:kiwi/kiwi.dart' as kiwi;

class BlocFactory {
  final kiwi.Container _container;

  BlocFactory(this._container);

  T call<T extends Bloc<E, S>, E, S>() => _container.resolve<T>();

  T create<T extends Bloc<E, S>, E, S>(BuildContext _) =>
      _container.resolve<T>();
}
