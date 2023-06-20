class FirebaseLogInFailure implements Exception {
  final String message;
  const FirebaseLogInFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory FirebaseLogInFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const FirebaseLogInFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const FirebaseLogInFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const FirebaseLogInFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const FirebaseLogInFailure(
          'Incorrect password, please try again.',
        );
      default:
        return const FirebaseLogInFailure();
    }
  }
}
