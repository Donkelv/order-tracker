import 'package:ably_flutter/ably_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:order_tracker/order_tracker/domain/use_cases/ably_use_case.dart';
import 'package:order_tracker/order_tracker/logic/notifier.dart';
import 'package:order_tracker/order_tracker/logic/state.dart';


class MockAblyUseCase extends Mock implements AblyUseCase {}

void main() {
  group('AblyNotifier', () {
    late AblyNotifier ablyNotifier;
    late MockAblyUseCase mockAblyUseCase;

    setUp(() {
      mockAblyUseCase = MockAblyUseCase();
      ablyNotifier = AblyNotifier(mockAblyUseCase);
    });

    test('initial state is orderPlaced', () {
      expect(ablyNotifier.state, const AblyState.orderPlaced());
    });

    test('connectToChannel updates state on successful connection', () async {
      const channelName = 'order_channel';

      // Simulate a successful connection
      when(mockAblyUseCase.connectToChannel(channelName))
          .thenAnswer((_) async {});

      // Simulate receiving a message
      final testMessage = Message(data: 'ORDER IN PROGRESS');
      when(mockAblyUseCase.getOrderUpdates())
          .thenAnswer((_) => Stream.value(testMessage));

      await ablyNotifier.connectToChannel(channelName);

      // Verify that the state is updated accordingly
      expect(ablyNotifier.state, AblyState.orderInProgress(testMessage));
    });

    test('connectToChannel updates state on unknown order status', () async {
      const channelName = 'order_channel';

      // Simulate a successful connection
      when(mockAblyUseCase.connectToChannel(channelName))
          .thenAnswer((_) async {});

      // Simulate receiving a message with an unknown order status
      final testMessage = Message(data: 'UNKNOWN_STATUS');
      when(mockAblyUseCase.getOrderUpdates())
          .thenAnswer((_) => Stream.value(testMessage));

      await ablyNotifier.connectToChannel(channelName);

      // Verify that the state is updated to unknownStatus
      expect(ablyNotifier.state, const AblyState.unknownStatus());
    });

    

    tearDown(() {
      reset(mockAblyUseCase);
    });
  });
}
