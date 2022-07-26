import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'vizo_text.dart';

/// Will mirror/invert your widget is language has Directionality - [TextDirection.rtl]
///
/// Example: Hebrew
class VizoLangInverter extends StatelessWidget {
  const VizoLangInverter({
    Key? key,
    this.alignment = Alignment.center,
    required this.child,
  }) : super(key: key);

  final Alignment alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isRtl(context)
        ? Transform(
            // angle: isRtl(context) ? math.pi * -45 : 0,
            transform: Matrix4.rotationY(math.pi),
            alignment: alignment,
            child: child,
          )
        : child;
  }
}
