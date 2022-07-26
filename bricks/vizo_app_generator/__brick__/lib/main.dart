import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'src/core/core.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  BlocOverrides.runZoned(
    () {
      runApp(
        const App(),
      );
    },
    blocObserver: CubitObserver(),
  );
}
