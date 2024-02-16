import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class ProfileNavigatorContainer extends StatelessWidget {
  const ProfileNavigatorContainer({
    super.key,
    required this.leadinIcon,
    required this.infoText,
    this.onPressed,
  });

  final IconData leadinIcon;
  final String infoText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Container(
          height: 61,
          width: 384,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFF4EDFF),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      leadinIcon,
                      color: AppColors.deepBlueColor,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Text(
                      infoText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF030319),
                      ),
                    ),
                  ],
                ),

                //SizedBox(width: MediaQuery.of(context).size.width*0.3,),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.deepBlueColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
