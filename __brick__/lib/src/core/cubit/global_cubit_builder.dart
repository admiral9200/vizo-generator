import 'package:flutter/material.dart';

class GlobalCubitBuilder extends StatelessWidget {
  const GlobalCubitBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
