import 'package:flutter/material.dart';

import '../main.dart';
import '../src/core/router/router.dart';
import '../src/core/theme/theme.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}App extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: '{{#pascalCase}}{{name}}{{/pascalCase}} App',
      theme: AppThemes.kLightThemeData,
      // REMOVE THIS
      home: const Scaffold(),
      onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
