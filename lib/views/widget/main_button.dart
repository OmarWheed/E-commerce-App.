import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const MainButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 10,
            foregroundColor: Colors.white),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
