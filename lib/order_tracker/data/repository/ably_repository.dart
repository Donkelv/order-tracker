import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:order_tracker/order_tracker/domain/repository/ably_repository_interface.dart';

class AblyRepository implements AblyRepositoryInterface {
  late final ably.Realtime _ablyRealtime;
  late ably.RealtimeChannel _orderChannel;

  late final ably.ClientOptions clientOptions;

  AblyRepository() {
    clientOptions = ably.ClientOptions(key: dotenv.env['ABLY_API_KEY']);
    _ablyRealtime = ably.Realtime(options: clientOptions);
    _orderChannel = _ablyRealtime.channels.get('order_status');
  }

  @override
  Future<void> connectToChannel(String channelName) async {
    await _orderChannel.attach();
  }

  @override
  Stream<ably.Message> getOrderUpdates() {
    return _orderChannel.subscribe().map((message) => message);
  }
}

