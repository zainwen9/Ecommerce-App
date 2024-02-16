import 'package:ecommerce_app/core/widgets/ios_back_button.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  static const routeName = '/privacy-policy-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IosBackButton(
                onPressed: Navigator.of(context).pop,
              ),
              const SizedBox(height: 30),
              const PrivacyPolicyItemWidget(
                title: 'Terms & Service',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipi Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipi Lorem ipsum dolor',
              ),
              const SizedBox(height: 30),
              const PrivacyPolicyItemWidget(
                title: 'Privacy Policy',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipi Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipi Lorem ipsum dolor',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrivacyPolicyItemWidget extends StatelessWidget {
  const PrivacyPolicyItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.deepBlueColor,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black.withOpacity(.8),
          ),
        ),
      ],
    );
  }
}
