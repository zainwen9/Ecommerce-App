import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '/core/widgets/round_text_field.dart';
import '/features/auth/screens/login_screen.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  static const routeName = '/new-password';

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  late final TextEditingController _newPasswordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
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
                'New Password',
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
                'Enter your new password',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF838BA1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              RoundTextField(
                controller: _newPasswordController,
                hintText: 'Enter your Email',
                isPassword: true,
              ),

              const SizedBox(height: 20),
              RoundTextField(
                controller: _confirmPasswordController,
                hintText: 'Enter your Email',
                isPassword: true,
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.42),
              // Sign up Button
              RoundButton(
                label: 'Reset Password',
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    LoginScreen.routeName,
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
