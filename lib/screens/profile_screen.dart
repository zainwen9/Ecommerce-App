import 'package:ecommerce_app/screens/help_screen.dart';
import 'package:ecommerce_app/screens/privacy_policy_screen.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/widgets/ios_back_button_white.dart';
import '/widgets/profile_navigator_container.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final double profileHeight = 144;
  final double coverHeight = 178;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: bottom),
                  width: double.infinity,
                  height: coverHeight,
                  color: AppColors.deepBlueColor,
                  child: Row(
                    children: [
                      IosBackButtonWhite(
                        onPressed: Navigator.of(context).pop,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: top,
                  child: CircleAvatar(
                    radius: profileHeight / 2,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: const AssetImage(
                      'assets/images/profilePic.png',
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'Person Name',
                  style: TextStyle(
                      color: AppColors.deepBlueColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              height: 3,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'zainmehmood984@gmail.com',
                  style: TextStyle(
                      color: Color(0xFF030319),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2),
                )),

            //Info categories
            const SizedBox(
              height: 31,
            ),
            const ProfileNavigatorContainer(
              leadinIcon: Icons.person,
              infoText: 'Profile Info',
            ),
            const SizedBox(
              height: 22,
            ),

            const ProfileNavigatorContainer(
              leadinIcon: Icons.currency_exchange_rounded,
              infoText: 'Points Balance',
            ),
            const SizedBox(
              height: 22,
            ),

            const ProfileNavigatorContainer(
              leadinIcon: Icons.gif_box_rounded,
              infoText: 'Rewards History',
            ),
            const SizedBox(
              height: 22,
            ),

            ProfileNavigatorContainer(
              leadinIcon: Icons.help,
              infoText: 'Help',
              onPressed: () {
                Navigator.of(context).pushNamed(
                  HelpScreen.routeName,
                );
              },
            ),
            const SizedBox(
              height: 22,
            ),

            ProfileNavigatorContainer(
              leadinIcon: Icons.privacy_tip,
              infoText: 'Privacy Policy',
              onPressed: () {
                Navigator.of(context).pushNamed(
                  PrivacyPolicyScreen.routeName,
                );
              },
            ),
            const SizedBox(
              height: 22,
            ),

            const ProfileNavigatorContainer(
              leadinIcon: Icons.login,
              infoText: 'Log out',
            ),
          ],
        ),
      ),
    );
  }
}
