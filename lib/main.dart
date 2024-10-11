import 'package:ecommerce_app/helper/function_helper.dart';
import 'package:ecommerce_app/utils/routes.dart';
import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      initialRoute: RouteName.loginPage,
      onGenerateRoute: onGenerateRoutes,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9F9),
        primaryColor: const Color(0xFFDB3022),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.grey),
          labelStyle: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Colors.grey),
          focusedBorder: borderTextFormField(),
          enabledBorder: borderTextFormField(),
        ),
      ),
    );
  }
}
