import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    // ignore: unused_local_variable
    final routeName = settings.name;

    // ignore: prefer_const_constructors
    late Widget routeWidget = SizedBox();

    return MaterialPageRoute(
      builder: (_) => routeWidget,
      settings: settings,
    );
  }
}
