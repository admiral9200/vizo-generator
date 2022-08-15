import 'package:flutter/material.dart';

import '../core.dart';

class AppDesign {
  static const kHugePadding = kDefaultPadding * 2;
  static const kDefaultPadding = 20.0;
  static const kMediumPadding = kDefaultPadding / 1.5;
  static const kHalfPadding = kDefaultPadding / 2;

  static const kPageSpacing = kDefaultPadding;
  static const kBigSpacing = kDefaultPadding * 4;
  static const kMediumSpacing = 32.0;
  static const kDefaultSpacing = 20.0;

  static final kHugeBorderRadius =
      BorderRadius.circular(kHugeBorderRadiusAsDouble);
  static double kHugeBorderRadiusAsDouble = 28.0;

  static final kDefaultBorderRadius =
      BorderRadius.circular(kDefaultBorderRadiusAsDouble);
  static double kDefaultBorderRadiusAsDouble = 20.0;

  static final kSmallBorderRadius =
      BorderRadius.circular(kSmallBorderRadiusAsDouble);
  static double kSmallBorderRadiusAsDouble = 16.0;

  static kHugeTitleStyle(BuildContext context) =>
      Theme.of(context).textTheme.headline1!.copyWith(
            fontSize: 38,
            fontWeight: FontWeight.bold,
          );

  static final kDefaultButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.kPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: AppDesign.kHugeBorderRadius,
    ),
  );

  static const kDefaultDialogShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
      bottomLeft: Radius.circular(50),
      bottomRight: Radius.circular(50),
    ),
  );

  static const kDefaultPopupShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16),
      bottomLeft: Radius.circular(16),
      bottomRight: Radius.circular(16),
    ),
  );

  static BorderRadius kDefaultBottomSheepShape = BorderRadius.only(
    topLeft: Radius.circular(
      kHugeBorderRadiusAsDouble,
    ),
    topRight: Radius.circular(
      kHugeBorderRadiusAsDouble,
    ),
  );

  static const kHugeIconSize = 43.0;
  static const kBigIconSize = 33.0;
  static const kMediumIconSize = 27.0;
  static const kHalfIconSize = 22.0;
  static const kSmallIconSize = 15.0;
  static const kVerySmallIconSize = 10.0;
}
