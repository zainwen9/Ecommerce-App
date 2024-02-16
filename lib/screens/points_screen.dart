import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/extensions/extensions.dart';
import '/models/purchase_activity.dart';

class PointsScreen extends StatelessWidget {
  const PointsScreen({super.key});

  static const routeName = '/points-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Constants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              buildPointsAppBar(),

              const SizedBox(height: 40),

              // Points Level
              buildPointsLevelCard(),

              const SizedBox(height: 40),

              // Till Next Reward
              buildTillNextRewardCard(),

              const SizedBox(height: 40),

              // Purchase Activity
              const Text(
                'Purchase Activity',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.greyColor,
                ),
              ),

              // List of Purchase activity cards
              ...dummyPurchaseActivities
                  .map(
                    (purchaseActivity) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: PurchaseActivityCard(
                        purchaseActivity: purchaseActivity,
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }

  // Points App Bar
  buildPointsAppBar() => Row(
        children: [
          Builder(builder: (context) {
            return IosBackButton(
              onPressed: Navigator.of(context).pop,
              borderWidth: 1.0,
            );
          }),
          const SizedBox(width: 20),
          const Text(
            'Points Balance',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      );

  // Points Level Card
  buildPointsLevelCard() => Container(
        decoration: BoxDecoration(
          color: AppColors.deepBlueColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          child: Column(
            children: [
              // Row 1
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Beginner lvl1',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Beginner lvl1',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.yellowColor,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // Row 2
              LinearProgressIndicator(
                color: AppColors.yellowColor,
                backgroundColor: Colors.white,
                value: .6,
                minHeight: 8,
                borderRadius: BorderRadius.circular(5),
              ),

              const SizedBox(height: 15),

              // Row 3
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '450 more points for next level',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '220/670',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  buildTillNextRewardCard() => Material(
        elevation: 3,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 25,
          ),
          child: Row(
            children: [
              Image.asset('assets/icons/gift.png'),
              const SizedBox(width: 15),
              const Text(
                '450 more points for next reward',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
}

class PurchaseActivityCard extends StatelessWidget {
  const PurchaseActivityCard({
    Key? key,
    required this.purchaseActivity,
  }) : super(key: key);

  final PurchaseActivity purchaseActivity;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  purchaseActivity.brandName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppColors.deepBlueColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  purchaseActivity.purchaseDate.mmdd(),
                  style: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              purchaseActivity.details,
            ),
          ],
        ),
      ),
    );
  }
}
