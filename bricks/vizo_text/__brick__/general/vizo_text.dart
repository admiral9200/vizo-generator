import 'package:flutter/material.dart';

const forcedTextDirection = TextDirection.ltr;

bool isRtl(BuildContext context) {
  final TextDirection currentDirection = Directionality.of(context);
  return currentDirection == TextDirection.rtl;
}

class VizoText extends StatelessWidget {
  const VizoText(
    this.resourceKey, {
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  }) : super(key: key);

  final String resourceKey;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    // TODO: get map of translations
    /// <languageCode>, <translationKey, translation>
    final Map<String, Map<String, String>> resources = {};
    final locale = Localizations.localeOf(context);

    final resource = resources[resourceKey];
    if (resource == null) {
      debugPrint('$resourceKey is an invalid translation key');
    }

    return Text(
      resource != null ? resource[locale.languageCode]! : resourceKey,
      key: key,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
    );
  }

  // /// [padding(bottom)] - space between underline and text
  // static Widget buildUnderlineText({
  //   required BuildContext context,
  //   Widget? child,
  //   EdgeInsets padding = const EdgeInsets.only(bottom: 3),
  //   double decorationThickness = 1.0,
  // }) {
  //   return Container(
  //     padding: padding,
  //     decoration: BoxDecoration(
  //       border: Border(
  //           bottom: BorderSide(
  //         color: Theme.of(context).colorScheme.onSurface,
  //         width: decorationThickness,
  //       )),
  //     ),
  //     child: child ?? const SizedBox.shrink(),
  //   );
  // }
}
