import 'package:clothing_store/core/base_usecase.dart';
import 'package:clothing_store/domain/repositories/respositories.dart';
import 'package:dartz/dartz.dart';
import 'package:clothing_store/data/failure/failure.dart';

class LoginUseCase extends BaseUseCase<RegiseterParams, void> {
  AuthRepository authRepository;
  LoginUseCase({required this.authRepository});

  @override
  Future<Either<Failure, void>> call(RegiseterParams params) async {
    return await authRepository.register(params.email, params.password);
  }
}

class RegiseterParams {
  String email;
  String password;
  RegiseterParams({
    required this.email,
    required this.password,
  });
}
