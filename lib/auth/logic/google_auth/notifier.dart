import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:order_tracker/auth/domain/use_cases/google_auth.dart';
import 'package:order_tracker/auth/logic/google_auth/state.dart';

class GoogleAuthNotifier extends StateNotifier<GoogleAuthState> {
  GoogleAuthNotifier({
    required GoogleAuthUseCase googleAuth,
    required Ref ref,
  })  : _googleAuth = googleAuth,
        super(const GoogleAuthState.initial());

  final GoogleAuthUseCase _googleAuth;

  Future<void> googleAuth() async {
    state = const GoogleAuthState.loading();
    final result = await _googleAuth();
    result.fold(
      (error) {
        state = GoogleAuthState.error(error);
      },
      (data) async {
        state = GoogleAuthState.successful(data);
      },
    );
  }
}
