import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/core/widgets/round_button.dart';
import '/features/payment/screens/payment_screen.dart';
import '/models/featured_offer.dart';

class FeaturedOfferDetailScreen extends StatelessWidget {
  const FeaturedOfferDetailScreen({
    Key? key,
    required this.featuredOffer,
  }) : super(key: key);

  final FeaturedOffer featuredOffer;

  static const routeName = '/product-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Constants.defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IosBackButton(
                  onPressed: Navigator.of(context).pop,
                ),
                const SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
                // Product Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    child: Image.asset(
                      featuredOffer.imageUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Product Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      featuredOffer.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.deepBlueColor,
                      ),
                    ),
                    const Text(
                      '345 \$',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Product description
                Text(featuredOffer.description),
                const SizedBox(height: 10),

                // Product features
                const OptionsList(),

                const SizedBox(height: 20),

                _buildOfferPoints(
                  points: featuredOffer.points,
                ),
                const SizedBox(height: 40),

                // Get Offer Button
                RoundButton(
                  label: 'Get Offer',
                  onPressed: () {
                    // TODO: This is just for the sake of test
                    Navigator.of(context).pushNamed(
                      PaymentScreen.routeName,
                    );
                  },
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOfferPoints({
    required int points,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: AppColors.blueGreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: Constants.containerPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Offer Points',
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.deepBlueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '${featuredOffer.points} pts',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
}

class OptionsList extends StatelessWidget {
  const OptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 30,
      ),
      itemBuilder: (context, index) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/icons/group.png', height: 20),
            const SizedBox(width: 10),
            const Text('Lorem ipsum'),
          ],
        );
      },
    );
  }
}
