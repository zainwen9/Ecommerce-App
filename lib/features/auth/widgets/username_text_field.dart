import 'package:flutter/material.dart';

import '/core/constants/app_colors.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    Key? key,
    required this.controller,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10),
              child: Icon(
                Icons.person,
                color: AppColors.deepBlueColor,
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.only(left: 0),
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: validator,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
