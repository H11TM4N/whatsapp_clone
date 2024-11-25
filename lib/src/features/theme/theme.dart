import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

final baseTheme = ThemeData.light();

ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
    headlineMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 18,
    ),
  ).apply(
    fontFamily: BARLOW_SEMI_CONDENSED,
  ),
  useMaterial3: true,
);

var appColors = AppColors();
