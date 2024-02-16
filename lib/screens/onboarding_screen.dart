import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '/core/constants/app_colors.dart';
import '/core/widgets/round_button.dart';
import '/features/auth/screens/signup_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// This method will transition to signup screen from onboarding screen
  Future<void> closeOnboardingScreen() async =>
      Navigator.of(context).pushNamed(SignupScreen.routeName);

  /// Go to next page in onboarding screen
  void goToNextPage() => _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 36,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 9,
              child: PageView(
                controller: _controller,
                children: const [
                  OnboardingScreenItem(assetUrl: 'assets/images/coins.png'),
                  OnboardingScreenItem(assetUrl: 'assets/images/coins2.png'),
                  OnboardingScreenItem(assetUrl: 'assets/images/coins3.png'),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  SmoothPageIndicator(
                    count: 3,
                    controller: _controller,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColors.blueColor,
                      dotColor: AppColors.greyColor,
                      expansionFactor: 4,
                      dotHeight: 8,
                      dotWidth: 8,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Next Button
                  RoundButton(
                    label: 'Next',
                    onPressed: () {
                      if (_controller.page == 2) {
                        closeOnboardingScreen();
                      } else {
                        goToNextPage();
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  // Skip Button
                  TextButton(
                    onPressed: closeOnboardingScreen,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: AppColors.deepBlueColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingScreenItem extends StatelessWidget {
  const OnboardingScreenItem({
    Key? key,
    required this.assetUrl,
  }) : super(key: key);

  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 300, child: Image.asset(assetUrl)),
          const SizedBox(height: 30),
          const Text(
            'Lorem ipsum dolor',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquam justo et risus tincidunt, non lobortis lectus eleifend.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
