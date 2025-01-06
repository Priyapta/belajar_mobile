import 'package:belajar_4/detailOutcome.dart';
import 'package:belajar_4/infoMoney.dart';
import 'package:belajar_4/left_drawer.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Center(child: Text("Hello")),
      ),
      drawer: leftDrawer(),
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
                  Text("Recent Expanses"),
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
