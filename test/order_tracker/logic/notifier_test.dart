import 'dart:async';

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
      final testMessage = Message(
        clientId: null,
        connectionId: "oqXiSqXTqc",
        data: "ORDER IN PROGRESS",
        extras: null,
        encoding: null,
        id: "oqXiSqXTqc:1:0",
        name: "order_status",
        timestamp: DateTime.now(),
      );
      when(mockAblyUseCase.getOrderUpdates())
          .thenAnswer((_) => Stream.value(testMessage));

      // Start the asynchronous call
      final connectionFuture = ablyNotifier.connectToChannel(channelName);

      // Wait for the completion of the asynchronous call
      await connectionFuture;

      // Verify that the state is updated accordingly
      expect(ablyNotifier.state, AblyState.orderInProgress(testMessage));

      // Verify that connectToChannel was called with the correct arguments
      verify(mockAblyUseCase.connectToChannel(channelName));
    });



    test('connectToChannel updates state on unknown order status', () async {
      const channelName = 'order_channel';

      // Simulate a successful connection
      when(mockAblyUseCase.connectToChannel(channelName))
          .thenAnswer((_) async {});

      // Simulate receiving a message with an unknown order status
      final testMessage = Message(
        clientId: null,
        connectionId: "oqXiSqXTqc",
        data: "UNKNOWN_STATUS",
        extras: null,
        encoding: null,
        id: "oqXiSqXTqc:1:0",
        name: "order_status",
        timestamp: DateTime.now(),
      );
      when(mockAblyUseCase.getOrderUpdates())
          .thenAnswer((_) => Stream.value(testMessage));

      await ablyNotifier.connectToChannel(channelName);

      // Verify that the state is updated to unknownStatus
      expect(ablyNotifier.state, const AblyState.unknownStatus());
    });

    test('connectToChannel updates state on known order status', () async {
      const channelName = 'order_channel';

      // Simulate a successful connection
      when(mockAblyUseCase.connectToChannel(channelName))
          .thenAnswer((_) async {});

      // Simulate receiving a message with a known order status
      final testMessage = Message(
        clientId: null,
        connectionId: "oqXiSqXTqc",
        data: "ORDER ACCEPTED",
        extras: null,
        encoding: null,
        id: "oqXiSqXTqc:1:0",
        name: "order_status",
        timestamp: DateTime.now(),
      );
      when(mockAblyUseCase.getOrderUpdates())
          .thenAnswer((_) => Stream.value(testMessage));

      await ablyNotifier.connectToChannel(channelName);

      // Verify that the state is updated accordingly
      expect(ablyNotifier.state, AblyState.orderInProgress(testMessage));
    });

    tearDown(() {
      reset(mockAblyUseCase);
    });
  });
}
