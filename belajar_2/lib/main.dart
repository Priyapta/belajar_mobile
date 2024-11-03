import 'package:belajar_2/models/coffeShop.dart';
import 'package:belajar_2/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Coffeeshop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: HomePage(),
      ),
    );
  }
}
