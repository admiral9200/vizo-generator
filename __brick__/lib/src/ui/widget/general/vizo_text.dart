import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubit/cubit.dart';

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
    final resources = context.read<I18nCubit>().state.resourcesMap;
    final locale = Localizations.localeOf(context);

    final resource = resources[resourceKey];
    if (resource == null) {
      debugPrint('$resourceKey is an invalid resource key');
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
}
