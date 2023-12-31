import 'package:clothing_store/domain/usecases/forget_password_usecase.dart';
import 'package:clothing_store/domain/usecases/logout_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../data/data.dart';
import '../data/network/network_info.dart';
import '../domain/domain.dart';
import '../domain/usecases/usecases.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  // network info
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(InternetConnectionChecker()));
  // firebase auth
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  // auth repo
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(networkInfo: getIt(), firebaseAuth: getIt()));
  // Login usecase
  getIt.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(authRepository: getIt()));
  // Register usecase
  getIt.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(authRepository: getIt()));
  // Logout  usecase
  getIt.registerLazySingleton<LogoutUseCase>(
      () => LogoutUseCase(authRepository: getIt()));
  // Forgot password usecase
  getIt.registerLazySingleton<ForgetPasswordUseCase>(
      () => ForgetPasswordUseCase(authRepository: getIt()));
}
