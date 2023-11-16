import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:order_tracker/core/exceptions/failure.dart';

part 'state.freezed.dart';

extension GoogleAuthStateGetters on GoogleAuthState {
  bool get isSuccessful => this is GoogleAuthSuccessfulState;
  bool get isInit => this is GoogleAuthInitialState;
  bool get isLoading => this is GoogleAuthLoadingState;
  bool get isError => this is GoogleAuthErrorState;
  UserCredential? get data => maybeWhen(
        successful: (plpData) => plpData,
        orElse: () => null,
      );
}

@freezed
class GoogleAuthState with _$GoogleAuthState {
  /// Data is present state
  const factory GoogleAuthState.successful(
          UserCredential data) =
      GoogleAuthSuccessfulState;

  /// Data is empty state
  const factory GoogleAuthState.empty() =
      GoogleAuthEmptyState;

  /// Initial/default state
  const factory GoogleAuthState.initial() =
      GoogleAuthInitialState;

  /// Data is loading state
  const factory GoogleAuthState.loading() =
      GoogleAuthLoadingState;

  /// Error when loading data state
  const factory GoogleAuthState.error([Failure? error]) =
      GoogleAuthErrorState;
}
