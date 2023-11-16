import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
class AblyState with _$AblyState {
  const factory AblyState({
    @Default('') String orderStatus,
  }) = _AblyState;
}
