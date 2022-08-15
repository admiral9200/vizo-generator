import 'package:flutter/material.dart';

class AppColors {
  static const kPrimary = Color(0xFF4FB27F);
  static const kSecondary = Color(0xFFFBA0A5);
  static const kTertiary = Color(0xFFFFEE81);
  static const kQuaternary = Color(0xFF94CBEA);

  static const kBlack = Color(0xFF000000);
  static const kWhite = Color(0xFFFFFFFF);
  static const kBackground = Color(0xFFFFFFFF);
  static const kModalBackground = Color(0xFFFFFDFD);
  static const kSecondaryBackground = Color(0xFFF6FBF9);
  static const kAlertDialogOverlayOpacity = 0.70;

  static const kDefaultText = Color(0xFF000000);
  static const kComplementaryText = Color(0xFFFFFFFF);

  static const kIconColor = Color(0xFF7B7B7B);

  static ColorScheme kAppColorScheme = ColorScheme.light(
    primary: kPrimary,
    secondary: const Color(0xFF96C9AC),
    primaryVariant: kPrimary.withOpacity(0.7),
    secondaryVariant: kTertiary.withOpacity(0.7),
    surface: kWhite,
    background: kBackground,
    error: const ColorScheme.light().error,
  );
}
