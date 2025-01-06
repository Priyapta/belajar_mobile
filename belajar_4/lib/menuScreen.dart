import 'package:flutter/material.dart';

class menuScreen extends StatelessWidget {
  const menuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.grey.shade100,
        child: const Center(
          child: Text(
            "Menu Screen",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
