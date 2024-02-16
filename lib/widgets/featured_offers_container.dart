import 'package:ecommerce_app/screens/featured_offer_detail_screen.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/models/featured_offer.dart';

class FeaturedOffersContainer extends StatelessWidget {
  const FeaturedOffersContainer({
    super.key,
    required this.featuredOffer,
  });

  final FeaturedOffer featuredOffer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          FeaturedOfferDetailScreen.routeName,
          arguments: featuredOffer,
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Product image
              Image.asset(featuredOffer.imageUrl),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        featuredOffer.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.deepBlueColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      featuredOffer.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF282828),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22, left: 90),
                      child: Container(
                        width: 90,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFF8236F2),
                        ),
                        child: Center(
                          child: Text(
                            '${featuredOffer.points} Points',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
