import 'package:flutter/material.dart';

Container boxImage({required String img}) {
  return Container(
    alignment: Alignment.center,
    width: 92,
    height: 64,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10,
        )
      ],
      borderRadius: BorderRadius.circular(24),
      color: Colors.white,
      image: DecorationImage(
        image: AssetImage(img),
      ),
    ),
  );
}
