import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/order_tracker/domain/use_cases/ably_use_case.dart';
import 'package:order_tracker/order_tracker/logic/state.dart';

class AblyNotifier extends StateNotifier<AblyState> {
  final AblyUseCase _ablyUseCase;

  AblyNotifier(this._ablyUseCase) : super(const AblyState());

  Future<void> connectToChannel(String channelName) async {
    await _ablyUseCase.connectToChannel(channelName);

    // Listen for order updates and update the state accordingly
    _ablyUseCase.getOrderUpdates().listen((message) {
      final orderStatus =
          (message.data as Map<String, dynamic>)['order_status'];
      _updateOrderStatus(orderStatus);
    });
  }

  void _updateOrderStatus(String orderStatus) {
    // Update the state based on the received order status
    state = state.copyWith(orderStatus: orderStatus);
  }
}
