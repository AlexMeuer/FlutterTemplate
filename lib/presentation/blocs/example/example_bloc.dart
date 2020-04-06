import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_template/domain/use_cases/user_requests_example/user_requests_example.dart';
import 'package:meta/meta.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  final UserRequestsExample _userRequestsExample;

  ExampleBloc(this._userRequestsExample) : assert(_userRequestsExample != null);

  @override
  ExampleState get initialState => InitialState();

//  @override
//  Stream<ExampleState> transformEvents(
//    Stream<ExampleEvent> events,
//    Stream<ExampleState> Function(ExampleEvent event) next,
//  ) {
//    final nonDebounceStream = events.where((event) {
//      return (event is! EmailChanged && event is! PasswordChanged);
//    });
//    final debounceStream = events.where((event) {
//      return (event is EmailChanged || event is PasswordChanged);
//    }).debounceTime(Duration(milliseconds: 300));
//    return super.transformEvents(
//      nonDebounceStream.mergeWith([debounceStream]),
//      next,
//    );
//  }

  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if (event is ConcreteEvent) {
      yield* _handleIt(event);
    }
  }

  Stream<ExampleState> _handleIt(ConcreteEvent event) async* {
    var result = await _userRequestsExample();
    yield InitialState();
  }
}
