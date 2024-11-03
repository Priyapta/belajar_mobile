import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavbar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: onTabChange,
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 24,
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade300,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
