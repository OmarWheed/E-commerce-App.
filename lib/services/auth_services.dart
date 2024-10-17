import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  //stream of auth state
  Stream<User?> getAuthState();
  //current User
  User? get currentUser;
  //firebase auth

  Future<User?> loginWithEmailAndPassword(
      {required String email, required String password});
  Future<User?> signUpWithEmailAndPassword(
      {required String email, required String password});
}

class Auth implements AuthBase {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<User?> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    final userAuth = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  Future<User?> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    final userAuth = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  User? get currentUser => _auth.currentUser;

  @override
  Stream<User?> getAuthState() => _auth.authStateChanges();
}
