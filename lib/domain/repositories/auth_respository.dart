import 'package:clothing_store/data/data.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login(String email, String password);
  Future<void> logout();
  Future<bool> isLoggedIn();
  Future<void> register(String email, String password);
}
