import 'package:flutter/material.dart';

class RectangularIconButton extends StatelessWidget {
  const RectangularIconButton({
    Key? key,
    required this.assetUrl,
  }) : super(key: key);

  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          child: Image.asset(
            assetUrl,
            width: 50,
          ),
        ),
      ),
    );
  }
}
