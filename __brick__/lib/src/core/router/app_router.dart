import 'package:flutter/material.dart';

import '../../page/page.dart';
import '../core.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    // ignore: unused_local_variable
    final routeName = settings.name;

    // ignore: prefer_const_constructors
    late Widget routeWidget;

    if (routeName == LANDING_PAGE) {
      routeWidget = const LandingPage();
    } 

    return MaterialPageRoute(
      builder: (_) => routeWidget,
      settings: settings,
    );
  }
}
