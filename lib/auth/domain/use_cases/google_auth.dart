import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:order_tracker/auth/domain/repository/igoogle_auth_repo.dart';
import 'package:order_tracker/core/exceptions/failure.dart';


class GoogleAuthUseCase {
  GoogleAuthUseCase({required IGoogleAuthRepository repository})
      : _repository = repository;

  final IGoogleAuthRepository _repository;

  Future<Either<Failure, UserCredential>> call() async =>
      _repository.googleAuth();
}
