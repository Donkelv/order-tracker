import 'package:ably_flutter/ably_flutter.dart';
import 'package:order_tracker/order_tracker/domain/repository/ably_repository_interface.dart';

class AblyUseCase {
  final AblyRepositoryInterface _repository;

  AblyUseCase(this._repository);

  Future<void> connectToChannel(String channelName) async {
    await _repository.connectToChannel(channelName);
  }

  Stream<Message> getOrderUpdates() {
    return _repository.getOrderUpdates();
  }
}
