import 'package:flutter/material.dart';

class leftDrawer extends StatelessWidget {
  const leftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text("Test1"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
