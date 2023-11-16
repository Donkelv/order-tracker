// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAuthStateCopyWith<$Res> {
  factory $GoogleAuthStateCopyWith(
          GoogleAuthState value, $Res Function(GoogleAuthState) then) =
      _$GoogleAuthStateCopyWithImpl<$Res, GoogleAuthState>;
}

/// @nodoc
class _$GoogleAuthStateCopyWithImpl<$Res, $Val extends GoogleAuthState>
    implements $GoogleAuthStateCopyWith<$Res> {
  _$GoogleAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoogleAuthSuccessfulStateCopyWith<$Res> {
  factory _$$GoogleAuthSuccessfulStateCopyWith(
          _$GoogleAuthSuccessfulState value,
          $Res Function(_$GoogleAuthSuccessfulState) then) =
      __$$GoogleAuthSuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential data});
}

/// @nodoc
class __$$GoogleAuthSuccessfulStateCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthSuccessfulState>
    implements _$$GoogleAuthSuccessfulStateCopyWith<$Res> {
  __$$GoogleAuthSuccessfulStateCopyWithImpl(_$GoogleAuthSuccessfulState _value,
      $Res Function(_$GoogleAuthSuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GoogleAuthSuccessfulState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$GoogleAuthSuccessfulState implements GoogleAuthSuccessfulState {
  const _$GoogleAuthSuccessfulState(this.data);

  @override
  final UserCredential data;

  @override
  String toString() {
    return 'GoogleAuthState.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAuthSuccessfulState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAuthSuccessfulStateCopyWith<_$GoogleAuthSuccessfulState>
      get copyWith => __$$GoogleAuthSuccessfulStateCopyWithImpl<
          _$GoogleAuthSuccessfulState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthSuccessfulState implements GoogleAuthState {
  const factory GoogleAuthSuccessfulState(final UserCredential data) =
      _$GoogleAuthSuccessfulState;

  UserCredential get data;
  @JsonKey(ignore: true)
  _$$GoogleAuthSuccessfulStateCopyWith<_$GoogleAuthSuccessfulState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleAuthEmptyStateCopyWith<$Res> {
  factory _$$GoogleAuthEmptyStateCopyWith(_$GoogleAuthEmptyState value,
          $Res Function(_$GoogleAuthEmptyState) then) =
      __$$GoogleAuthEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleAuthEmptyStateCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthEmptyState>
    implements _$$GoogleAuthEmptyStateCopyWith<$Res> {
  __$$GoogleAuthEmptyStateCopyWithImpl(_$GoogleAuthEmptyState _value,
      $Res Function(_$GoogleAuthEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleAuthEmptyState implements GoogleAuthEmptyState {
  const _$GoogleAuthEmptyState();

  @override
  String toString() {
    return 'GoogleAuthState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleAuthEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthEmptyState implements GoogleAuthState {
  const factory GoogleAuthEmptyState() = _$GoogleAuthEmptyState;
}

/// @nodoc
abstract class _$$GoogleAuthInitialStateCopyWith<$Res> {
  factory _$$GoogleAuthInitialStateCopyWith(_$GoogleAuthInitialState value,
          $Res Function(_$GoogleAuthInitialState) then) =
      __$$GoogleAuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleAuthInitialStateCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthInitialState>
    implements _$$GoogleAuthInitialStateCopyWith<$Res> {
  __$$GoogleAuthInitialStateCopyWithImpl(_$GoogleAuthInitialState _value,
      $Res Function(_$GoogleAuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleAuthInitialState implements GoogleAuthInitialState {
  const _$GoogleAuthInitialState();

  @override
  String toString() {
    return 'GoogleAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleAuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthInitialState implements GoogleAuthState {
  const factory GoogleAuthInitialState() = _$GoogleAuthInitialState;
}

/// @nodoc
abstract class _$$GoogleAuthLoadingStateCopyWith<$Res> {
  factory _$$GoogleAuthLoadingStateCopyWith(_$GoogleAuthLoadingState value,
          $Res Function(_$GoogleAuthLoadingState) then) =
      __$$GoogleAuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleAuthLoadingStateCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthLoadingState>
    implements _$$GoogleAuthLoadingStateCopyWith<$Res> {
  __$$GoogleAuthLoadingStateCopyWithImpl(_$GoogleAuthLoadingState _value,
      $Res Function(_$GoogleAuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleAuthLoadingState implements GoogleAuthLoadingState {
  const _$GoogleAuthLoadingState();

  @override
  String toString() {
    return 'GoogleAuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleAuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthLoadingState implements GoogleAuthState {
  const factory GoogleAuthLoadingState() = _$GoogleAuthLoadingState;
}

/// @nodoc
abstract class _$$GoogleAuthErrorStateCopyWith<$Res> {
  factory _$$GoogleAuthErrorStateCopyWith(_$GoogleAuthErrorState value,
          $Res Function(_$GoogleAuthErrorState) then) =
      __$$GoogleAuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? error});
}

/// @nodoc
class __$$GoogleAuthErrorStateCopyWithImpl<$Res>
    extends _$GoogleAuthStateCopyWithImpl<$Res, _$GoogleAuthErrorState>
    implements _$$GoogleAuthErrorStateCopyWith<$Res> {
  __$$GoogleAuthErrorStateCopyWithImpl(_$GoogleAuthErrorState _value,
      $Res Function(_$GoogleAuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$GoogleAuthErrorState(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$GoogleAuthErrorState implements GoogleAuthErrorState {
  const _$GoogleAuthErrorState([this.error]);

  @override
  final Failure? error;

  @override
  String toString() {
    return 'GoogleAuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleAuthErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleAuthErrorStateCopyWith<_$GoogleAuthErrorState> get copyWith =>
      __$$GoogleAuthErrorStateCopyWithImpl<_$GoogleAuthErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredential data) successful,
    required TResult Function() empty,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredential data)? successful,
    TResult? Function()? empty,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredential data)? successful,
    TResult Function()? empty,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleAuthSuccessfulState value) successful,
    required TResult Function(GoogleAuthEmptyState value) empty,
    required TResult Function(GoogleAuthInitialState value) initial,
    required TResult Function(GoogleAuthLoadingState value) loading,
    required TResult Function(GoogleAuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleAuthSuccessfulState value)? successful,
    TResult? Function(GoogleAuthEmptyState value)? empty,
    TResult? Function(GoogleAuthInitialState value)? initial,
    TResult? Function(GoogleAuthLoadingState value)? loading,
    TResult? Function(GoogleAuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleAuthSuccessfulState value)? successful,
    TResult Function(GoogleAuthEmptyState value)? empty,
    TResult Function(GoogleAuthInitialState value)? initial,
    TResult Function(GoogleAuthLoadingState value)? loading,
    TResult Function(GoogleAuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthErrorState implements GoogleAuthState {
  const factory GoogleAuthErrorState([final Failure? error]) =
      _$GoogleAuthErrorState;

  Failure? get error;
  @JsonKey(ignore: true)
  _$$GoogleAuthErrorStateCopyWith<_$GoogleAuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
