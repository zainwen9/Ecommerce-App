import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isEmpty = false,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isEmpty ? Colors.transparent : AppColors.deepBlueColor,
          borderRadius: BorderRadius.circular(15),
          border: isEmpty
              ? Border.all(
                  color: AppColors.deepBlueColor,
                  width: 2,
                )
              : null,
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: isEmpty ? FontWeight.w500 : FontWeight.w400,
              color: isEmpty ? AppColors.deepBlueColor : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
