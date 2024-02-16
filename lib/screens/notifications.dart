import 'package:flutter/material.dart';

import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/widgets/notifications.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  static const routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IosBackButton(
                      onPressed: Navigator.of(context).pop,
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  const Text(
                    'Notifications',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),

              //Notifications container
              const SizedBox(
                height: 37,
              ),
              const NotificationsContainer(
                date: '18 NOV',
              ),
              const SizedBox(
                height: 37,
              ),
              const NotificationsContainer(
                date: '17 NOV',
              ),
              const SizedBox(
                height: 37,
              ),
              const NotificationsContainer(
                date: '16 NOV',
              ),
              const SizedBox(
                height: 37,
              ),
              const NotificationsContainer(
                date: '15 NOV',
              ),
              const SizedBox(
                height: 37,
              ),
              const NotificationsContainer(
                date: '14 NOV',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
