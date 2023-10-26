import 'package:bloc_counter/presentation/screens/home_screen.dart';
import 'package:bloc_counter/presentation/screens/second_screen.dart';
import 'package:bloc_counter/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) {
            return const HomeScreen(title: 'HomeScreen', color: Colors.blueAccent);
          },
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) {
            return const SecondScreen(title: 'SecondScreen', color: Colors.pinkAccent);
          },
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) {
            return const ThirdScreen(title: 'ThirdScreen', color: Colors.greenAccent);
          },
        );
      default:
        return null;
    }
  }
}
