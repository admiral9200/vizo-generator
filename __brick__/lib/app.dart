import 'package:flutter/material.dart';

import '{{#lowerCase}}{{appName}}{{/lowerCase}}_app.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const {{#pascalCase}}{{appName}}{{/pascalCase}}App();
    /*GlobalCubitProvider(
      child: GlobalCubitBuilder(
        child: GlobalCubitListener(
          child: {{#pascalCase}}{{appName}}{{/pascalCase}}App(),
        ),
      ),
    );*/
  }
}
