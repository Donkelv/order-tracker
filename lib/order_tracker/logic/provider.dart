import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/order_tracker/data/repository/ably_repository.dart';
import 'package:order_tracker/order_tracker/domain/repository/ably_repository_interface.dart';
import 'package:order_tracker/order_tracker/domain/use_cases/ably_use_case.dart';
import 'package:order_tracker/order_tracker/logic/notifier.dart';
import 'package:order_tracker/order_tracker/logic/state.dart';

final ablyNotifierProvider = StateNotifierProvider<AblyNotifier, AblyState>(
  (ref) => AblyNotifier(
    AblyUseCase(
      ref.read(ablyRepositoryProvider),
    ),
  ),
);

final ablyRepositoryProvider = Provider<AblyRepositoryInterface>((ref) {
  return AblyRepository();
});
