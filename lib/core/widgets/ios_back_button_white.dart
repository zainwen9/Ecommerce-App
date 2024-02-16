import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class IosBackButtonWhite extends StatelessWidget {
  const IosBackButtonWhite({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.deepBlueColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          width: 35,
          height: 35,
          child: Container(
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
