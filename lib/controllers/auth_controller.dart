import 'package:flutter/material.dart';

import 'package:ecommerce_app/services/auth_services.dart';

class AuthController with ChangeNotifier {
  final AuthBase authBase;
  String email;
  String password;
  AuthController({
    required this.authBase,
    this.email = '',
    this.password = '',
  });

  void updateEmail(String email) => copyWith(email: email);
  void updatePassword(String password) => copyWith(password: password);

  //copy with
  void copyWith({
    AuthBase? authBase,
    String? email,
    String? password,
  }) {
    this.email = email ?? this.email;
    this.password = password ?? this.password;
    notifyListeners();
  }

  Future<void> login() async {
    try {
      await authBase.loginWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> registerUser() async {
    try {
      await authBase.signUpWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      rethrow;
    }
  }
}
