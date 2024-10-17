import 'package:ecommerce_app/helper/function_helper.dart';
import 'package:ecommerce_app/services/auth_services.dart';
import 'package:ecommerce_app/utils/routes.dart';
import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        initialRoute: RouteName.landingPage,
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
            focusedErrorBorder: borderTextFormField().copyWith(
              borderSide: const BorderSide(color: Colors.red),
            ),
            errorBorder: borderTextFormField().copyWith(
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
