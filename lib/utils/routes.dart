import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:ecommerce_app/views/pages/login_page.dart';
import 'package:ecommerce_app/views/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Route onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.loginPage:
      return CupertinoPageRoute(builder: (_) {
        return const LoginPage();
      });
   
    case RouteName.registerPage:
      return CupertinoPageRoute(builder: (_) {
        return const RegisterPage();
      });
   
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
