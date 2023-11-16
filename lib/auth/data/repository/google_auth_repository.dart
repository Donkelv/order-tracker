import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:order_tracker/auth/data/datasources/igoogle_auth.dart';
import 'package:order_tracker/auth/domain/repository/igoogle_auth_repo.dart';
import 'package:order_tracker/core/exceptions/failure.dart';
import 'package:order_tracker/core/network_manager/domain/inetwork_manager.dart';

class GoogleAuthRepository implements IGoogleAuthRepository {
  GoogleAuthRepository(
      {required IGoogleAuth remoteDataSource,
      required INetworkManager networkManager})
      : _remoteDataSource = remoteDataSource,
        _networkManager = networkManager;

  final IGoogleAuth _remoteDataSource;
  final INetworkManager _networkManager;

  @override
  Future<Either<Failure, UserCredential>> googleAuth() async {
    if (await _networkManager.isConnected) {
      try {
        final UserCredential userCredential =
            await _remoteDataSource.googleAuth();
        return Right(userCredential);
      } on Failure catch (e) {
        return Left(e);
      } catch (_) {
        return Left(InternalException());
      }
    } else {
      return Left(ConnectionException());
    }
  }
}
