import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../core.dart';

class GlobalCubitProvider extends StatelessWidget {
  const GlobalCubitProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<I18nCubit>(
          create: (context) => I18nCubit(
            languageRepository: G<LanguageRepository>(),
            translationRepository: G<TranslationRepository>(),
          )..fetchI18nInfo(),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}
