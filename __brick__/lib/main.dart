import 'package:flutter/material.dart';

import 'app.dart';
import 'src/core/core.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(const App());
}
