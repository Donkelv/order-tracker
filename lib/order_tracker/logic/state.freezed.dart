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
mixin _$AblyState {
  String get orderStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AblyStateCopyWith<AblyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AblyStateCopyWith<$Res> {
  factory $AblyStateCopyWith(AblyState value, $Res Function(AblyState) then) =
      _$AblyStateCopyWithImpl<$Res, AblyState>;
  @useResult
  $Res call({String orderStatus});
}

/// @nodoc
class _$AblyStateCopyWithImpl<$Res, $Val extends AblyState>
    implements $AblyStateCopyWith<$Res> {
  _$AblyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatus = null,
  }) {
    return _then(_value.copyWith(
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AblyStateCopyWith<$Res> implements $AblyStateCopyWith<$Res> {
  factory _$$_AblyStateCopyWith(
          _$_AblyState value, $Res Function(_$_AblyState) then) =
      __$$_AblyStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderStatus});
}

/// @nodoc
class __$$_AblyStateCopyWithImpl<$Res>
    extends _$AblyStateCopyWithImpl<$Res, _$_AblyState>
    implements _$$_AblyStateCopyWith<$Res> {
  __$$_AblyStateCopyWithImpl(
      _$_AblyState _value, $Res Function(_$_AblyState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderStatus = null,
  }) {
    return _then(_$_AblyState(
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AblyState implements _AblyState {
  const _$_AblyState({this.orderStatus = ''});

  @override
  @JsonKey()
  final String orderStatus;

  @override
  String toString() {
    return 'AblyState(orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AblyState &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AblyStateCopyWith<_$_AblyState> get copyWith =>
      __$$_AblyStateCopyWithImpl<_$_AblyState>(this, _$identity);
}

abstract class _AblyState implements AblyState {
  const factory _AblyState({final String orderStatus}) = _$_AblyState;

  @override
  String get orderStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AblyStateCopyWith<_$_AblyState> get copyWith =>
      throw _privateConstructorUsedError;
}
