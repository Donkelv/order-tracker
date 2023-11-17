import 'package:ably_flutter/ably_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
class AblyState with _$AblyState {
  const factory AblyState.initial() = _Initial;
  const factory AblyState.loading() = _Loading;
  const factory AblyState.orderPlaced() = _OrderPlaced;
  const factory AblyState.orderInProgress(Message orderStatus) =
      _OrderInProgress;
  const factory AblyState.error(String error) = _Error;
  const factory AblyState.unknownStatus() = _Unknown;
}
