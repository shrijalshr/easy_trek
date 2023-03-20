import 'package:easy_trek/module/auth/login/view/login_screen.dart';
import 'package:easy_trek/module/auth/signup/view/signup_screen.dart';
import 'package:easy_trek/module/homescreen/view/home_screen.dart';
import 'package:easy_trek/module/place_detail/view/place_detail_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();
  static const String onBoarding = "/onBoarding";
  static const String login = "/login";
  static const String signup = "/signup";
  static const String homescreen = "/homescreen";
  static const String placeDetailScreen = "/placeDetailScreen";
}

class RouteGenerator {
  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return getPage(LoginScreen());

      case Routes.login:
        return getPage(LoginScreen());

      case Routes.signup:
        return getPage(SignupScreen());

      case Routes.homescreen:
        return getPage(const Homescreen());
      case Routes.placeDetailScreen:
        return getPage(const PlaceDetailScreen());

      default:
        return getPage(LoginScreen());
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
