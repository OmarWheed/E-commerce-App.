import 'package:ecommerce_app/helper/box_image.dart';
import 'package:ecommerce_app/utils/routes_name.dart';
import 'package:ecommerce_app/views/widget/main_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _nameFocusNode = FocusNode();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    "Sign up",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 100),
                  TextFormField(
                    focusNode: _nameFocusNode,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    validator: (va) =>
                        va!.isEmpty ? "Please enter a Name" : null,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    decoration: const InputDecoration(
                      label: Text("Name"),
                      hintText: "Enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    focusNode: _emailFocusNode,
                    onEditingComplete: () => FocusScope.of(context).nextFocus(),
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
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamedAndRemoveUntil(
                        RouteName.loginPage,
                        (route) => false,
                      ),
                      child: const Text(
                        "Already have an account?",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  MainButton(
                      text: "Sign up",
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed(
                            RouteName.bottomNavBar,
                          );
                        }
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        "Or sign up with social account",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
