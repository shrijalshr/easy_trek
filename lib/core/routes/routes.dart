import 'package:easy_trek/module/auth/login/view/login_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String onBoarding = "/onBoarding";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String homescreen = "/homescreen";
}

class RouteGenerator {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return getPage(const LoginScreen());

      case Routes.login:
        return getPage(const LoginScreen());
      default:
        return getPage(const LoginScreen());
    }
  }

  static getPage(page) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (_, a, __, c) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: a.drive(tween),
            child: c,
          );
        });
  }
}
