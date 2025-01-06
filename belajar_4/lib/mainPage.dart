import 'package:belajar_4/menuScreen.dart';
import 'package:belajar_4/myHomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      // style: DrawerStyle.style1,
      mainScreen: const Myhomepage(),
      menuScreen: const menuScreen(),
      menuBackgroundColor: Colors.grey.shade100,
      showShadow: true,

      isRtl: false,
    );
  }
}
