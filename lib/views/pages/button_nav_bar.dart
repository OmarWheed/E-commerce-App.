import 'package:ecommerce_app/views/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PersistentTabController _controller = PersistentTabController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        controller: _controller,
        tabs: [
          PersistentTabConfig(
            screen: const HomeScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Home",
              activeForegroundColor: Colors.red,
            ),
          ),
          PersistentTabConfig(
            screen: const ShopScreen(),
            item: ItemConfig(
              icon: const Icon(Icons.shopping_cart_outlined),
              title: "shop",
              activeForegroundColor: Colors.red,
            ),
          ),
          PersistentTabConfig(
            screen: const BagScreen(),
            item: ItemConfig(
              icon: const Icon(
                Icons.shopping_bag_outlined,
              ),
              title: "bag",
              activeForegroundColor: Colors.red,
            ),
          ),
          PersistentTabConfig(
            screen: const FavoriteScreen(),
            item: ItemConfig(
              icon: const Icon(
                Icons.favorite_border,
              ),
              title: "favorite",
              activeForegroundColor: Colors.red,
            ),
          ),
          PersistentTabConfig(
            screen: const ProfileScreen(),
            item: ItemConfig(
              icon: const Icon(
                Icons.account_circle_outlined,
              ),
              title: "profile",
              activeForegroundColor: Colors.red,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style8BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}

class StackOver extends StatelessWidget {
  const StackOver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.4,
          width:MediaQuery.of(context).size.width,
          child: Image.asset(
            "assets/images/home.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 26,
          left: 16,
          child: Text(
            "Street clothes",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        )
      ],
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ShopScreen"),
      ),
    );
  }
}

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("BagScreen"),
      ),
    );
  }
}

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("FavoriteScreen"),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ProfileScreen"),
      ),
    );
  }
}
