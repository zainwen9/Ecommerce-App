import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class NotificationsContainer extends StatelessWidget {
  const NotificationsContainer({
    super.key,
    required this.date,
  });

  final String date;

  static const routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 121,
        width: 384,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFFFFFFF)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 19, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  date,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.deepBlueColor),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14, left: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipi Lorem ipsum dolor ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
