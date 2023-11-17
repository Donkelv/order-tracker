import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:order_tracker/auth/domain/use_cases/google_auth.dart';
import 'package:order_tracker/auth/logic/google_auth/state.dart';
import 'package:order_tracker/core/constant/hive_const.dart';
import 'package:order_tracker/core/constant/toast.dart';
import 'package:order_tracker/core/enities/hive_entities/user_entity.dart';
import 'package:order_tracker/order_tracker/presentation/screen/home.dart';

class GoogleAuthNotifier extends StateNotifier<GoogleAuthState> {
  GoogleAuthNotifier({
    required GoogleAuthUseCase googleAuth,
    required Ref ref,
  })  : _googleAuth = googleAuth,
        super(const GoogleAuthState.initial());

  final GoogleAuthUseCase _googleAuth;

  var userDetailsBox = Hive.box<UserHive>(HiveConst.userDetailsBox);

  Future<void> googleAuth({required BuildContext context}) async {
    state = const GoogleAuthState.loading();
    final result = await _googleAuth();
    result.fold(
      (error) {
        showToast(error.message);
        state = GoogleAuthState.error(error);
      },
      (data) async {
        userDetailsBox.put(
          HiveConst.userDetailsKey,
          UserHive(
            id: data.user!.uid,
            displayName: data.user!.displayName,
            emailAddress: data.user!.email,
            photo: data.user!.photoURL,
          ),
        );
        showToast("Logged in successfully");
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
            (route) => false);
        state = GoogleAuthState.successful(data);
      },
    );
  }
}
