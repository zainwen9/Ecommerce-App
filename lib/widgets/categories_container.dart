import 'package:flutter/material.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({
    Key? key,
    required this.assetUrl,
  }) : super(key: key);

  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 75,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(9),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          assetUrl,
        ),
      ),
    );
  }
}
