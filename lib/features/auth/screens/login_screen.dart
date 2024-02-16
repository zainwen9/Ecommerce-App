import 'package:flutter/material.dart';

import '/config/helpers/validators.dart';
import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/rectangular_icon_button.dart';
import '/core/widgets/round_button.dart';
import '/features/auth/screens/forget_password.dart';
import '/features/auth/screens/signup_screen.dart';
import '/features/auth/widgets/password_text_field.dart';
import '/features/auth/widgets/username_text_field.dart';
import '/screens/home_screen.dart';

final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pushNamed(
        HomeScreen.routeName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IosBackButton(
                onPressed: Navigator.of(context).pop,
              ),
              const SizedBox(height: 20),
              // Register to get started
              const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepBlueColor,
                ),
              ),
              const SizedBox(height: 30),
              // Form (TextFields)
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username text field
                    UsernameTextField(
                      controller: _usernameController,
                      validator: validateUsername,
                    ),

                    const SizedBox(height: 20),

                    // Password text field
                    PasswordTextField(
                      controller: _passwordController,
                      validator: validatePassword,
                    ),

                    const SizedBox(height: 20),

                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            ForgetPassword.routeName,
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Sign up Button
                    RoundButton(
                      label: 'Log in',
                      onPressed: login,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Or Sign up with
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or Login with',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Facebook | Google Sign in methods
              const Row(
                children: [
                  RectangularIconButton(assetUrl: 'assets/icons/google.png'),
                  SizedBox(width: 20),
                  RectangularIconButton(assetUrl: 'assets/icons/facebook.png'),
                ],
              ),
              const SizedBox(height: 40),
              // Don't have an account?
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RoundButton(
                isEmpty: true,
                label: 'Sign up',
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    SignupScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
