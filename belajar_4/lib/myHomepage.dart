import 'package:belajar_4/detailOutcome.dart';
import 'package:belajar_4/infoMoney.dart';
import 'package:belajar_4/left_drawer.dart';
import 'package:belajar_4/menuScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.analytics),
          Icon(Icons.add),
          Icon(Icons.rocket),
        ],
        color: Colors.green.shade100,
        backgroundColor: Colors.grey.shade100,
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(
          child: Text("Hello"),
        ),
        leading: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)!.toggle();
            },
            icon: Icon(Icons.menu)),
      ),
      // drawer: leftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              InfoMoney(),
              Row(
                children: [
                  Text(
                    "Recent Expanses",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("November 19 2024"),
                    detailOutcome(
                      icon: Icons.fastfood_outlined,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    detailOutcome(
                      icon: Icons.airplanemode_active_rounded,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    detailOutcome(
                      icon: Icons.health_and_safety_rounded,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    detailOutcome(
                      icon: Icons.airplanemode_active_outlined,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    detailOutcome(
                      icon: Icons.fastfood_outlined,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    detailOutcome(
                      icon: Icons.fastfood_outlined,
                      money: "\$10.00",
                      percent: "2%",
                      title: "Food",
                      type: "Drinks",
                    ),
                    Divider(
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
