import 'package:ecommerce_app/helper/box_image.dart';
import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:ecommerce_app/views/widget/main_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 32, left: 32, top: 60),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 100),
                  TextFormField(
                    focusNode: _emailFocusNode,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (va) =>
                        va!.isEmpty ? "Please enter a Email" : null,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    decoration: const InputDecoration(
                      label: Text("Email"),
                      hintText: "Enter your E-mail",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    validator: (va) =>
                        va!.isEmpty ? "Please enter a password" : null,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    decoration: const InputDecoration(
                      label: Text("Password"),
                      hintText: "Enter your Password",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      child: Text(
                        "Forget your password ?",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  MainButton(
                      text: "LOGIN",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context)
                              .pushNamed(RouteName.bottomNavBar);
                        }
                      }),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteName.registerPage,
                        (route) => false,
                      ),
                      child: const Text(
                        "Don't have an account ?Register",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        "Or login with social account",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boxImage(img: "assets/images/facebook.png"),
                      const SizedBox(
                        width: 16,
                      ),
                      boxImage(img: "assets/images/google.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
