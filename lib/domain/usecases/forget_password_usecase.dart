import 'package:clothing_store/core/base_usecase.dart';
import 'package:clothing_store/domain/repositories/respositories.dart';
import 'package:dartz/dartz.dart';
import 'package:clothing_store/data/failure/failure.dart';

class ForgetPasswordUseCase extends BaseUseCase<ForgetPasswordParams, void> {
  AuthRepository authRepository;
  ForgetPasswordUseCase({required this.authRepository});

  @override
  Future<Either<Failure, void>> call(ForgetPasswordParams params) async {
    return await authRepository.forgetPassword(params.email);
  }
}

class ForgetPasswordParams {
  final String email;
  ForgetPasswordParams(this.email);
}
