import 'package:dartz/dartz.dart';

import '../data/failure/failure.dart';

abstract class BaseUseCase<Params, T> {
  Future<Either<Failure, T>> call(Params params);
}
