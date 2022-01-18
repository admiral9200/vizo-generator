import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubitListener extends StatelessWidget {
  const GlobalCubitListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: const [],
      child: child,
    );
  }
}
