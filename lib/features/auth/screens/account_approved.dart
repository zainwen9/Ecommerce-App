import 'package:flutter/material.dart';

import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '../../../screens/home_screen.dart';

class AccountApproved extends StatelessWidget {
  const AccountApproved({super.key});

  static const routeName = '/account-approved';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IosBackButton(
                  onPressed: Navigator.of(context).pop,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset('assets/icons/congrats.png'),
              const SizedBox(height: 15),
              const Text(
                'Congrats!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 15),
              const Text(
                'Your account creation is successful',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF6A6767)),
              ),
              const Text(
                'welcome to app name',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF6A6767)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              RoundButton(
                label: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
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
