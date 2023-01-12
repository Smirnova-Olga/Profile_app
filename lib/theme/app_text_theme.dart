import 'package:flutter/material.dart';
import 'package:profile_app/theme/colors_theme.dart';

abstract class AppTextTheme {
  static const headline3 =
      TextStyle(fontWeight: FontWeight.w400, height: 64, fontSize: 48);

  static const headline4 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 34,
    letterSpacing: 0.25,
  );

  static const headline5 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 24, height: 32);

  static const headline6 = TextStyle(
    color: ColorsTheme.black,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0.15,
  );

  static const subtitle1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.15,
  );

  static const subtitle2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );

  static const button = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.5,
  );
  static const body1 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.44,
  );

  static const body2 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.25,
  );

  static const caption = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.5,
  );

  static const overline = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    letterSpacing: 1.5,
  );
}
