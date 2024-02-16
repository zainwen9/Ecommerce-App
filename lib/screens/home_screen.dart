import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/models/featured_offer.dart';
import 'profile_screen.dart';
import '/screens/search_screen.dart';
import '/widgets/categories_container.dart';
import '/widgets/featured_offers_container.dart';
import '/widgets/loyalty_balance_card.dart';
import 'notifications.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Hello Name,",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProfileScreen.routeName,
            );
          },
          child: const Icon(
            Icons.person,
            color: AppColors.deepBlueColor,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    Notifications.routeName,
                  );
                },
                child: const Icon(
                  size: 32.0,
                  Icons.notifications_active,
                  color: AppColors.deepBlueColor,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  SearchScreen.routeName,
                );
              },
              child: const Icon(
                Icons.search,
                size: 32.0,
                color: AppColors.deepBlueColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Loyalty Balance Card
            const LoyaltyBalanceCard(),

            const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 41),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0xFF030319)),
                ),
              ),
            ),

            //List of items
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //1. food Container
                  CategoriesContainer(
                    assetUrl: 'assets/icons/food.png',
                  ),
                  //2. apparel Container
                  CategoriesContainer(
                    assetUrl: 'assets/icons/apparel.png',
                  ),
                  //3. Movie Container
                  CategoriesContainer(
                    assetUrl: 'assets/icons/movie.png',
                  ),
                  //4. Electronics Container
                  CategoriesContainer(
                    assetUrl: 'assets/icons/electronics.png',
                  ),
                ],
              ),
            ),

            //The main picture container starts here
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 56),
              child: Container(
                width: 384,
                height: 198,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/branding.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //Featured offers
            const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 63),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Featured Offers',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFF030319),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            //Featured offers List
            ...dummyFeaturedOffers
                .map(
                  (featuredOffer) => FeaturedOffersContainer(
                    featuredOffer: featuredOffer,
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
