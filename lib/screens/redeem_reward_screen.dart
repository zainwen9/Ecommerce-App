import 'package:flutter/material.dart';

import '/core/constants/constants.dart';
import '/core/widgets/round_button.dart';

class RedeemRewardScreen extends StatelessWidget {
  const RedeemRewardScreen({super.key});

  static const routeName = '/redeem-reward-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding2,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/giftbox.png'),
                  const SizedBox(height: 20),
                  const Text(
                    'Level 2 User',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Congratulations on reaching level 2. You have won a discount coupon.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            RoundButton(
              label: 'Claim Reward',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
