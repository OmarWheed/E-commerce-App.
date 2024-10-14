import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:ecommerce_app/views/pages/button_nav_bar.dart';
import 'package:ecommerce_app/views/pages/login_page.dart';
import 'package:ecommerce_app/views/pages/register_page.dart';
import 'package:flutter/material.dart';

Route onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.loginPage:
      return MaterialPageRoute(
          builder: (_) {
            return const LoginPage();
          },
          settings: settings);

    case RouteName.registerPage:
      return MaterialPageRoute(
          builder: (_) {
            return const RegisterPage();
          },
          settings: settings);

    case RouteName.bottomNavBar:
      return MaterialPageRoute(
          builder: (_) {
            return const BottomNavBar();
          },
          settings: settings);

    default:
      return MaterialPageRoute(builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text(
              "This Routes is UnKnow",
              style: TextStyle(fontSize: 25),
            ),
          ),
        );
      });
  }
}
