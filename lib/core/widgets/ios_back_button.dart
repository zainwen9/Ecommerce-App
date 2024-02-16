import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class IosBackButton extends StatelessWidget {
  const IosBackButton({
    Key? key,
    required this.onPressed,
    this.borderWidth = 2.0,
  }) : super(key: key);

  final VoidCallback onPressed;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.backButtonGrey,
          width: borderWidth,
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
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
