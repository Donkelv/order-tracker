import 'package:firebase_auth/firebase_auth.dart';

abstract class IGoogleAuth {
  Future<UserCredential> googleAuth();
}
