import 'package:ecommerce_app/views/pages/button_nav_bar.dart';
import 'package:ecommerce_app/views/widget/card_item.dart';
import 'package:ecommerce_app/views/widget/header_of_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StackOver(),
          const SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderOfList(
                  title: "Sale",
                  description: "Super summer sale",
                ),
                const SizedBox(
                  height: 22,
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CardItem(),
                    ),
                  ),
                ),
                const HeaderOfList(
                  title: "New",
                  description: "You’ve never seen it before!",
                ),
                const SizedBox(
                  height: 22,
                ),
                SizedBox(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CardItem(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
