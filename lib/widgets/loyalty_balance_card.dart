import 'package:ecommerce_app/screens/points_screen.dart';
import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class LoyaltyBalanceCard extends StatelessWidget {
  const LoyaltyBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          PointsScreen.routeName,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: Container(
          width: 384,
          height: 184,
          decoration: BoxDecoration(
            color: const Color(0xFF8236F2),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Column(
            children: [
              //  balance and level
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 27,
                  right: 27,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Loyalty Balance',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 94,
                      height: 31,
                      decoration: BoxDecoration(
                        color: AppColors.yellowColor,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Text(
                          'Beginner',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color(0xFF530DBB),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Points and coin
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 23,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/icons/yellowcoin.png'),
                    const SizedBox(
                      width: 11,
                    ),
                    const Text(
                      '220 pts',
                      style: TextStyle(
                        color: AppColors.yellowColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),

              // linear progress indicator
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  color: AppColors.yellowColor,
                  semanticsLabel: 'Linear progress indicator',
                  value: 0.7,
                ),
              ),

              // level row
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'earn 450 more points',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lvl 1',
                      style: TextStyle(
                        color: AppColors.yellowColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
