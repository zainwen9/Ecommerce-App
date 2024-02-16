import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
    required this.controller,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible = false;
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
                Icons.key,
                color: AppColors.deepBlueColor,
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: widget.controller,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    contentPadding: EdgeInsets.all(0)),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                obscureText: isPasswordVisible,
                validator: widget.validator,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              icon: Icon(
                Icons.remove_red_eye,
                color: isPasswordVisible
                    ? AppColors.greyColor
                    : AppColors.deepBlueColor,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
