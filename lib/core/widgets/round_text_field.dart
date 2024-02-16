import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.textInputAction,
    this.isPassword = false,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final String? Function(String?)? validator;

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
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            contentPadding: const EdgeInsets.only(left: 30),
          ),
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          obscureText: isPassword,
          validator: validator,
        ),
      ),
    );
  }
}
