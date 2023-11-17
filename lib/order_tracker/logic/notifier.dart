import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/core/constant/string_const.dart';
import 'package:order_tracker/order_tracker/domain/use_cases/ably_use_case.dart';
import 'package:order_tracker/order_tracker/logic/state.dart';

class AblyNotifier extends StateNotifier<AblyState> {
  final AblyUseCase _ablyUseCase;

  AblyNotifier(this._ablyUseCase) : super(const AblyState.orderPlaced());

  Future<void> connectToChannel(String channelName) async {
    debugPrint("here");
    await _ablyUseCase.connectToChannel(channelName);

    _ablyUseCase.getOrderUpdates().listen(
      (message) {
        if (kDebugMode) {
          print("The message is $message");
        }
        final orderStatus = message.data as String;
        if (orderStatus.isNotEmpty) {
          if (orderStages.contains(orderStatus)) {
            state = AblyState.orderInProgress(message);
          } else {
            debugPrint('Received unknown order status: $orderStatus');

            state = const AblyState.unknownStatus();
          }
        } else {
          debugPrint("order status is empty");
          state = const AblyState.orderPlaced();
        }
      },
      onError: (error) {
        debugPrint("order status encountered error");
        state = AblyState.error(error);
      },
      cancelOnError: true,
    );
  }
}
