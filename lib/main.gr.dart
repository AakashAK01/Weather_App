// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'homepage.dart' as _i1;
import 'search.dart' as _i3;
import 'weatherpage.dart' as _i2;
import 'yes_no.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage(key: args.key));
    },
    WeatherRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.WeatherPage(key: args.key, value: args.value));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    YesNoRoute.name: (routeData) {
      final args = routeData.argsAs<YesNoRouteArgs>(
          orElse: () => const YesNoRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.YesNoPage(key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i5.RouteConfig(HomeRoute.name, path: '/home'),
        _i5.RouteConfig(WeatherRoute.name, path: '/weather'),
        _i5.RouteConfig(LoginRoute.name, path: '/login'),
        _i5.RouteConfig(YesNoRoute.name, path: '/yes')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i6.Key? key})
      : super(HomeRoute.name, path: '/home', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.WeatherPage]
class WeatherRoute extends _i5.PageRouteInfo<WeatherRouteArgs> {
  WeatherRoute({_i6.Key? key, required String value})
      : super(WeatherRoute.name,
            path: '/weather', args: WeatherRouteArgs(key: key, value: value));

  static const String name = 'WeatherRoute';
}

class WeatherRouteArgs {
  const WeatherRouteArgs({this.key, required this.value});

  final _i6.Key? key;

  final String value;

  @override
  String toString() {
    return 'WeatherRouteArgs{key: $key, value: $value}';
  }
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key})
      : super(LoginRoute.name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.YesNoPage]
class YesNoRoute extends _i5.PageRouteInfo<YesNoRouteArgs> {
  YesNoRoute({_i6.Key? key})
      : super(YesNoRoute.name, path: '/yes', args: YesNoRouteArgs(key: key));

  static const String name = 'YesNoRoute';
}

class YesNoRouteArgs {
  const YesNoRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'YesNoRouteArgs{key: $key}';
  }
}
