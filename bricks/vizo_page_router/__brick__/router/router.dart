import 'dart:developer';

import 'package:flutter/material.dart';

// FirebaseCrashlytics _crashlytics = G<FirebaseCrashlytics>();

enum Routes {
  ///Init
  splash,
  home,

  ///Other
  help,

  ///
  error,
}

class AppRouter {
  const AppRouter._();
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;

    MaterialPageRoute<dynamic> _pageRouter(
        Widget Function(BuildContext context) widget) {
      return MaterialPageRoute(
        builder: widget,
        settings: settings,
      );
    }

    Route<dynamic> _noAnimationPageRouter(
        Widget Function(BuildContext context) widget) {
      return PageRouteBuilder(
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
        pageBuilder: (context, _, __) => widget(context),
        settings: settings,
      );
    }

    if (routes.containsKey(routeName)) {

      ///All pages
      return _pageRouter((context) => routes[routeName]!(context));
    }

    ///Error
    else {
      return _pageRouter((context) => emptyRoute(context)); // null
    }
  }

  static final Map<String, Widget Function(BuildContext)> routes = {
    // ModalRoute.of(context)?.settings.arguments as String?;

    // Routes.splash.name: (context) => SplashPage(language: G()),
    Routes.home.name: (context) {
      try{
        final args = ModalRoute.of(context)?.settings.arguments;
        return BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
          child: const HomePage(),
        );
      } catch (e, s) {
        log('${Routes.error}', error: e, stackTrace: s);
        // _crashlytics.recordError(e, s);
        return emptyRoute(context);
      }
    },

    //Error
    Routes.error.name: (context) {
      try {
        // TODO
        var settings = ModalRoute.of(context)?.settings;
        var args = ModalRoute.of(context)?.settings.arguments;
        return emptyRoute(context);
      } catch (e, s) {
        log('${Routes.error}', error: e, stackTrace: s);
        // _crashlytics.recordError(e, s);
        return emptyRoute(context);
      }
    }
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings? settings) {
    return generateRoutes(RouteSettings(name: Routes.error.name));
  }

  static Widget emptyRoute(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Something went wrong!',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
