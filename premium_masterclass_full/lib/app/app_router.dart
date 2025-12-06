import 'package:flutter/material.dart';
import 'package:premium_masterclass_full/presentation/screens/home_page.dart';
import 'package:premium_masterclass_full/presentation/screens/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(child: Text('Route not found: ${settings.name}')),
        ));
    }
  }
}
