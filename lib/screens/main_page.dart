import 'package:flutter/material.dart';
import 'package:food_app/screens/cart_view.dart';
import 'package:food_app/screens/chat_view.dart';
import 'package:food_app/screens/home_view.dart';
import 'package:food_app/screens/profile_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = const [HomeView(), ProfileView(), CartView(), ChatView()];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GNav(
          onTabChange: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          tabBorderRadius: 15,
          haptic: true,
          gap: 8,
          color: Colors.green,
          tabBackgroundColor: const Color.fromRGBO(83, 232, 139, 0.1),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconActiveColor: Colors.green,
              padding: EdgeInsets.all(16),
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
              iconActiveColor: Colors.green,
              padding: EdgeInsets.all(16),
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
              iconActiveColor: Colors.green,
              padding: EdgeInsets.all(16),
            ),
            GButton(
              icon: Icons.chat_bubble,
              text: "Chats",
              iconActiveColor: Colors.green,
              padding: EdgeInsets.all(16),
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
