import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

class GlobalCubitBuilder extends StatelessWidget {
  const GlobalCubitBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final i18nCubit = context.watch<I18nCubit>();
    final i18nState = i18nCubit.state;

    final isLoading = i18nState is I18nInfoLoading;

    return isLoading
        ? const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(),
          )
        : child;
  }
}
