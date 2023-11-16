import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/order_tracker/domain/use_cases/ably_use_case.dart';
import 'package:order_tracker/order_tracker/logic/state.dart';

class AblyNotifier extends StateNotifier<AblyState> {
  final AblyUseCase _ablyUseCase;

  AblyNotifier(this._ablyUseCase) : super(const AblyState.orderPlaced());

  Future<void> connectToChannel(String channelName) async {
   // state = const AblyState.loading();
    debugPrint("here");
    await _ablyUseCase.connectToChannel(channelName);

    

    // Listen for order updates and update the state accordingly
    _ablyUseCase.getOrderUpdates().listen(
      (message) {
        if (kDebugMode) {
          print("The message is $message");
        }
        final orderStatus = message.data as String;
        if (orderStatus.isNotEmpty) {
          debugPrint("Order status is not empty");
          state = AblyState.orderInProgress(message);
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
