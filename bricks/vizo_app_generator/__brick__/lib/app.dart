import 'package:flutter/material.dart';

import '{{#lowerCase}}{{appName}}{{/lowerCase}}_app.dart';
import 'src/core/core.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GlobalCubitProvider(
      child: GlobalCubitBuilder(
        child: GlobalCubitListener(
          child: {{#pascalCase}}{{appName}}{{/pascalCase}}App(),
        ),
      ),
    );
  }
}
