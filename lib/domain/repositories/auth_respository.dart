abstract class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> logout();
  Future<bool> isLoggedIn();
  Future<void> register(String email, String password);
}
