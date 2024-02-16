import 'package:flutter/cupertino.dart';

import '/core/screens/error_screen.dart';
import '/features/auth/screens/account_approved.dart';
import '/features/auth/screens/forget_password.dart';
import '/features/auth/screens/login_screen.dart';
import '/features/auth/screens/new_password.dart';
import '/features/auth/screens/otp_verification.dart';
import '/features/auth/screens/signup_screen.dart';
import '/features/payment/screens/payment_screen.dart';
import '/models/featured_offer.dart';
import '/screens/featured_offer_detail_screen.dart';
import '/screens/help_screen.dart';
import '/screens/home_screen.dart';
import '/screens/notifications.dart';
import '/screens/points_screen.dart';
import '/screens/privacy_policy_screen.dart';
import '/screens/profile_screen.dart';
import '/screens/redeem_reward_screen.dart';
import '/screens/search_screen.dart';

class Routes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // #1 Signup Screen
      case SignupScreen.routeName:
        return cupertinoRoute(
          const SignupScreen(),
        );
      // #2 Login Screen
      case LoginScreen.routeName:
        return cupertinoRoute(
          const LoginScreen(),
        );
      // #3 Points Screen
      case PointsScreen.routeName:
        return cupertinoRoute(
          const PointsScreen(),
        );
      // #4 Forgot Password Screen
      case ForgetPassword.routeName:
        return cupertinoRoute(
          const ForgetPassword(),
        );
      // #5 New Password Screen
      case NewPassword.routeName:
        return cupertinoRoute(
          const NewPassword(),
        );
      // #5 OTP Verfication Screen
      case OtpVerification.routeName:
        return cupertinoRoute(
          const OtpVerification(),
        );
      // #6 Account Approved Screen
      case AccountApproved.routeName:
        return cupertinoRoute(
          const AccountApproved(),
        );
      // #7 Profile Screen
      case ProfileScreen.routeName:
        return cupertinoRoute(
          const ProfileScreen(),
        );
      // #8 Notifications Screen
      case Notifications.routeName:
        return cupertinoRoute(
          const Notifications(),
        );
      // #9 Search Screen
      case SearchScreen.routeName:
        return cupertinoRoute(
          const SearchScreen(),
        );
      // #10 Search Screen
      case HomeScreen.routeName:
        return cupertinoRoute(
          const HomeScreen(),
        );
      // #11 Featured Offer Detail Screen
      case FeaturedOfferDetailScreen.routeName:
        final featuredOffer = settings.arguments as FeaturedOffer;
        return cupertinoRoute(
          FeaturedOfferDetailScreen(
            featuredOffer: featuredOffer,
          ),
        );
      // #12 Redeem Reward Screen
      case RedeemRewardScreen.routeName:
        return cupertinoRoute(
          const RedeemRewardScreen(),
        );
      // #13 Payment Screen
      case PaymentScreen.routeName:
        return cupertinoRoute(
          const PaymentScreen(),
        );
      // #14 Privacy Policy Screen
      case PrivacyPolicyScreen.routeName:
        return cupertinoRoute(
          const PrivacyPolicyScreen(),
        );
      // #15 Help Screen
      case HelpScreen.routeName:
        return cupertinoRoute(
          const HelpScreen(),
        );

      // ## If wrong route was provided
      default:
        return cupertinoRoute(
          const ErrorScreen(
            error: 'The request page was not found',
          ),
        );
    }
  }
}

CupertinoPageRoute cupertinoRoute(Widget view) =>
    CupertinoPageRoute(builder: (_) => view);
