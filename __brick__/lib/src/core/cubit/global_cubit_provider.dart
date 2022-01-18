import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubitProvider extends StatelessWidget {
  const GlobalCubitProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [],
      child: child,
    );
  }
}
