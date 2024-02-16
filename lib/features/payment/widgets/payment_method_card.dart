import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';
import '/core/constants/constants.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    Key? key,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final String value;
  final String groupValue;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 6, 6, 6),
      decoration: BoxDecoration(
        borderRadius: Constants.containerBorderRadius,
        color: AppColors.blueGreyColor,
      ),
      child: InkWell(
        onTap: () {
          onChanged(value);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
