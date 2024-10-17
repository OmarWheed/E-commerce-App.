import 'package:ecommerce_app/services/auth_services.dart';
import 'package:ecommerce_app/views/pages/button_nav_bar.dart';
import 'package:ecommerce_app/views/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final stream = Provider.of<AuthBase>(context).getAuthState();

    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          if (user == null) {
            return const LoginPage();
          } else {
            return const BottomNavBar();
          }
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
