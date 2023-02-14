import 'package:auto_route/auto_route.dart';
import 'package:auto_routers/main.gr.dart';
import 'package:auto_routers/search.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_routers/yes_no.dart';
import 'package:flutter/material.dart';
import 'package:auto_routers/weatherpage.dart';

import 'homepage.dart';
import 'package:auto_routers/yes_no.dart';

void main(
        {@visibleForTesting
            bool enabled = false,
        @visibleForTesting
            Duration backgroundLockLatency = const Duration(seconds: 30)}) =>
    runApp(MyApp());

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: "/home"),
    AutoRoute(page: WeatherPage, path: "/weather"),
    AutoRoute(page: LoginPage, path: "/login"),
    AutoRoute(page: YesNoPage, path: "/yes"),
  ],
)
class $AppRouter {}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        //brightness: Brightness.dark,
        backgroundColor: Color.fromARGB(255, 224, 208, 208).withOpacity(0.5),
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
