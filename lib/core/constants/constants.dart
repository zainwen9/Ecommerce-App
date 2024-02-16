import 'package:flutter/material.dart';

@immutable
class Constants {
  static const defaultPadding = EdgeInsets.only(
    top: 50,
    left: 24,
    right: 24,
  );

  static const defaultPadding2 = EdgeInsets.only(
    top: 50,
    left: 24,
    right: 24,
    bottom: 50,
  );

  static const containerPadding = EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 24.0,
  );

  static final containerBorderRadius = BorderRadius.circular(
    10,
  );
}
