import 'package:flutter/material.dart';

import '../shared_widgets/shared_widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // dismiss keyboard when touched outside the textfield
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 40.0, horizontal: 20.0),
                child: Column(
                  children: const [
                    Logo(),
                    SizedBox(height: 20.0),
                    _LoginText(),
                    SizedBox(height: 20.0),
                    _InputAndLogin(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

// Refactoring the code....

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120.0,
      child: Placeholder(),
      // child: LottieBuilder.asset(
      //   AssetManager.logoJson,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}

class _LoginText extends StatelessWidget {
  const _LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Login",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}

class _InputAndLogin extends StatelessWidget {
  const _InputAndLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input Fields

        // email
        CustomTextField(
          icon: Icons.email,
          label: "E-mail",
          errorText: '',
          onChange: (value) {
            // loginAuth.setEmail(value.trim());
          },
        ),
        const SizedBox(height: 20.0),

        //password

        CustomTextField(
          icon: Icons.lock,
          label: "Password",
          isObscure: true,
          errorText: '',
          // errorText: loginAuth.password.error,
          onChange: (value) {
            // loginAuth.setPassword(value);
          },
        ),

        const SizedBox(height: 50.0),

        // login button

        ElevatedButton(
          onPressed: () {},
          // !loginAuth.isValid()
          //     ? null
          //     : () async {
          //         //implement sign in
          //         await Provider.of<AuthService>(context, listen: false)
          //             .signInWithEmailAndPassword(loginAuth.email.value,
          //                 loginAuth.password.value, context);
          //       },
          child: const Text("Login"),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, Routes.forgotPasswordRoute);
              },
              child: Text(
                "Forgot password?",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.black),
              )),
        ),

        const SizedBox(height: 10.0),
        // alternative sign in methods

        Text(
          "Or, login with...",
        ),
        // style: getRegularTextStyle(color: ColorManager.grey)),

        const SizedBox(height: 20.0),

        // Register Option

        // HelperRichText(
        //   message: "Don't have an account yet? ",
        //   actionText: "Sign Up",
        //   onTap: () {
        //     // move to register screen
        //     Navigator.pushNamedAndRemoveUntil(
        //         context, Routes.registerRoute, (route) => false);
        //   },
        // ),
      ],
    );
  }
}
