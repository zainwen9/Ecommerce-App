import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  static const routeName = '/help-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Constants.defaultPadding2,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IosBackButton(
                  onPressed: Navigator.of(context).pop,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Need Help ?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.deepBlueColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipi \nLorem ipsum dolor Lore',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 40),

                // Phone
                const ContactCard(
                  icon: Icons.phone_in_talk,
                  text: 'Lorem ipsum dolor sit aum dolor',
                ),
                const SizedBox(height: 20),
                // Email
                const ContactCard(
                  icon: Icons.email,
                  text: 'Lorem ipsum dolor sit aum dolor',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.deepBlueColor,
              size: 30,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
