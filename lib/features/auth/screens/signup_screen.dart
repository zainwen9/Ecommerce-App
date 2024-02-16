import 'package:ecommerce_app/config/helpers/validators.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/rectangular_icon_button.dart';
import '/core/widgets/round_button.dart';
import '/core/widgets/round_text_field.dart';
import '/features/auth/screens/login_screen.dart';
import '/features/auth/screens/otp_verification.dart';

final _formKey = GlobalKey<FormState>();

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const routeName = '/signup-screen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late final TextEditingController _usernameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> signup() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pushNamed(
        OtpVerification.routeName,
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
                'Register to get\nstarted',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepBlueColor,
                ),
              ),
              const SizedBox(height: 25),
              // Form (TextFields)
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Username text field
                    RoundTextField(
                      controller: _usernameController,
                      hintText: 'Username',
                      validator: validateUsername,
                    ),
                    const SizedBox(height: 20),
                    // Email text field
                    RoundTextField(
                      controller: _emailController,
                      hintText: 'Email',
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 20),
                    // Password text field
                    RoundTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                      isPassword: true,
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 20),
                    // Confirm Password text field
                    RoundTextField(
                      controller: _confirmPasswordController,
                      hintText: 'Confirm Password',
                      isPassword: true,
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 30),
                    // Sign up Button
                    RoundButton(
                      label: 'Sign up',
                      onPressed: signup,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Or Sign up with
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Or Sign up with',
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
              // Already have an account? Login Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(
                        LoginScreen.routeName,
                      );
                    },
                    child: const Text(
                      'Login Now',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.deepBlueColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
