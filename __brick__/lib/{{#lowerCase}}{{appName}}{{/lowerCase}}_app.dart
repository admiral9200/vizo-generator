import 'package:flutter/material.dart';

import '../main.dart';
import '../src/core/router/router.dart';
import '../src/core/theme/theme.dart';

class {{#pascalCase}}{{appName}}{{/pascalCase}}App extends StatelessWidget {
  const {{#pascalCase}}{{appName}}{{/pascalCase}}App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: '{{#pascalCase}}{{appName}}{{/pascalCase}} App',
      theme: AppThemes.kLightThemeData,
      initialRoute: LANDING_PAGE,
      onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
