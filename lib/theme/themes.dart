import 'package:flutter/material.dart';
import 'package:team4_alterra/theme/colors.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: backgroundColor,
    focusColor: primary,
    colorSchemeSeed: white,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: black,
      selectionColor: black,
    ),
  );
}