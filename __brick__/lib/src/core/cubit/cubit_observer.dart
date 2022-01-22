import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';

class CubitObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (kDebugMode) {
      debugPrint(
        '(${bloc.runtimeType}) ${transition.event.runtimeType}: ${transition.currentState.runtimeType} -> ${transition.nextState.runtimeType}',
      );
    }

    super.onTransition(bloc, transition);
  }
}
