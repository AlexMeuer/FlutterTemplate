// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Example extends Example {
  @override
  final int Id;

  factory _$Example([void Function(ExampleBuilder) updates]) =>
      (new ExampleBuilder()..update(updates)).build();

  _$Example._({this.Id}) : super._() {
    if (Id == null) {
      throw new BuiltValueNullFieldError('Example', 'Id');
    }
  }

  @override
  Example rebuild(void Function(ExampleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleBuilder toBuilder() => new ExampleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Example && Id == other.Id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, Id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Example')..add('Id', Id)).toString();
  }
}

class ExampleBuilder implements Builder<Example, ExampleBuilder> {
  _$Example _$v;

  int _Id;
  int get Id => _$this._Id;
  set Id(int Id) => _$this._Id = Id;

  ExampleBuilder();

  ExampleBuilder get _$this {
    if (_$v != null) {
      _Id = _$v.Id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Example other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Example;
  }

  @override
  void update(void Function(ExampleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Example build() {
    final _$result = _$v ?? new _$Example._(Id: Id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
