import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import '../core.dart';

class AppThemes {
  static final ThemeData kLightThemeData = ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: AppColors.kBackground,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.5,
        letterSpacing: 1.0,
        color: AppColors.kDefaultText,
      ),
      bodyText2: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        color: AppColors.kDefaultText,
      ),
      headline1: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 28,
        height: 1.5,
        color: AppColors.kDefaultText,
      ),
      headline2: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 24,
        height: 1.5,
        letterSpacing: 1.0,
        color: AppColors.kDefaultText,
      ),
      headline3: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1.5,
        color: AppColors.kDefaultText,
      ),
    ),
    colorScheme: AppColors.kAppColorScheme,
    primaryColor: AppColors.kPrimary,
    scaffoldBackgroundColor: AppColors.kBackground,
    backgroundColor: AppColors.kBackground,
    dialogBackgroundColor: AppColors.kModalBackground,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}
