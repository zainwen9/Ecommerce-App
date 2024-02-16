import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '/core/widgets/round_text_field.dart';
import 'new_password.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  static const routeName = '/forget-password';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late final TextEditingController _forgetPasswordController;

  @override
  void initState() {
    _forgetPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _forgetPasswordController.dispose();
    super.dispose();
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
              IosBackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 49,
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.deepBlueColor,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const Text(
                'Enter the verification code we just sent on your email address.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF838BA1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              RoundTextField(
                controller: _forgetPasswordController,
                hintText: 'Enter your Email',
                isPassword: true,
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.42),
              // Sign up Button
              RoundButton(
                label: 'Send Code',
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    NewPassword.routeName,
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
