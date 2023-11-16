import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/auth/data/repository/google_auth_repository.dart';
import 'package:order_tracker/auth/domain/repository/igoogle_auth_repo.dart';
import 'package:order_tracker/auth/domain/use_cases/google_auth.dart';
import 'package:order_tracker/auth/logic/google_auth/notifier.dart';
import 'package:order_tracker/auth/logic/google_auth/state.dart';
import 'package:order_tracker/core/network_manager/data/network_manager.dart';

import '../../data/datasources/google_auth.dart';

final googleAuthStateProvider =
    StateNotifierProvider<GoogleAuthNotifier, GoogleAuthState>((ref) {
  return GoogleAuthNotifier(
    googleAuth: GoogleAuthUseCase(
      repository: ref.watch(googleAuthRepoProvider),
    ),
    ref: ref,
  );
});

final googleAuthRepoProvider = Provider<IGoogleAuthRepository>((ref) {
  return GoogleAuthRepository(
    remoteDataSource: GoogleAuth(),
    networkManager: NetworkManager(),
  );
});
