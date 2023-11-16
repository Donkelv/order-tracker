

import 'package:ably_flutter/ably_flutter.dart';

abstract class AblyRepositoryInterface {
  Future<void> connectToChannel(String channelName);
  Stream<Message> getOrderUpdates();
}
