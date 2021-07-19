import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const brightness = Brightness.light;

TextStyle appBarTextStyle = GoogleFonts.quicksand(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle defaultText = GoogleFonts.quicksand(
  color: Colors.black,
);

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: brightness,
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: AppColors.lightColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    colorScheme: ColorScheme(
      brightness: brightness,
      background: AppColors.lightColor,
      onBackground: AppColors.lightColor,
      error: AppColors.primaryColor,
      onError: AppColors.primaryColor,
      onPrimary: AppColors.lightColor,
      onSecondary: AppColors.accentColor,
      onSurface: AppColors.accentColor,
      primary: AppColors.primaryColor,
      primaryVariant: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      secondaryVariant: AppColors.accentColor,
      surface: AppColors.lightColor,
    ),
  );
}
