part of 'example_bloc.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  @override
  List<Object> get props => [];
}

class ConcreteEvent extends ExampleEvent {
  final Object foo;

  const ConcreteEvent(this.foo);

  @override
  List<Object> get props => [foo];
}
