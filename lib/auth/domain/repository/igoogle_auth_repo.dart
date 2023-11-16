import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:order_tracker/core/exceptions/failure.dart';

abstract class IGoogleAuthRepository {
  Future<Either<Failure, UserCredential>> googleAuth();
}
