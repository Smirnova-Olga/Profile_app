import 'package:flutter/material.dart';
import 'package:profile_app/gen/fonts.gen.dart';
import 'package:profile_app/theme/colors_theme.dart';

abstract class AppTextTheme {
  static const headline3 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 48,
  );

  static const headline4 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 34,
    letterSpacing: 0.25,
  );

  static const headline5 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );

  static const headline6 = TextStyle(
    fontFamily: FontFamily.roboto,
    color: ColorsTheme.black,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    letterSpacing: 0.15,
  );

  static const subtitle1 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const subtitle2 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );

  static const button = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.5,
  );
  static const body1 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.44,
  );

  static const body2 = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.25,
  );

  static const caption = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.33,
    letterSpacing: 0.5,
  );

  static const overline = TextStyle(
    fontFamily: FontFamily.roboto,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    letterSpacing: 1.5,
  );
}
