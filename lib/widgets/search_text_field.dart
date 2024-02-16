import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: '   Search...',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            contentPadding: EdgeInsets.only(top: 15),
            suffixIcon: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10),
              child: Icon(
                Icons.search,
                color: AppColors.deepBlueColor,
              ),
            ),
          ),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}
