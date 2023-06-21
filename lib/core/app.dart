import 'package:clothing_store/core/theme.dart';
import 'package:clothing_store/data/services/auth_services.dart';
import 'package:clothing_store/presentation/login/authentication_wrapper.dart';
import 'package:clothing_store/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal(); // private constructor

  // singleton instance
  static MyApp instance = const MyApp._internal();

  // This ensures MyApp is a singleton and and when accessed anywhere returns the same instance
  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthServices>(create: (_) => AuthServices()),
      ],
      child: MaterialApp(
        theme: theme,
        home: Builder(builder: (context) {
          return StreamProvider(
            create: (_) => context.read<AuthServices>().authStateChanges,
            initialData: null,
            child: const AuthenticationWrapper(),
          );
        }),
      ),
    );
  }
}
