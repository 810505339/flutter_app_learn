import 'package:flutter/material.dart';
import 'package:flutter_app/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routerName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const AuthScreen());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: Center(
                  child: Text('404 notFound'),
                ),
              ));
  }
}
