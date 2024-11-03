import 'package:belajar_2/models/coffe.dart';
import 'package:flutter/material.dart';

class Coffeeshop extends ChangeNotifier {
  // Coffe for sale list
  final List<Coffe> _shop = [
    //black coffe
    Coffe(
      name: "Long Black",
      price: "4.10",
      imagePath: "lib/images/black.png",
    ),
    //latte
    Coffe(
      name: "Latte",
      price: "4.0",
      imagePath: "lib/images/latte.png",
    ),
    //expresso
    Coffe(
      name: "Expresso",
      price: "3.5",
      imagePath: "lib/images/expresso.png",
    ),
    //iced Coffe
    Coffe(
      name: "Iced Coffe",
      price: "4.10",
      imagePath: "lib/images/ice_coffe.png",
    )
  ];

  List<Coffe> _userCart = [];

  List<Coffe> get coffeShop => _shop;

  List<Coffe> get userCart => _userCart;

  void addItemCart(Coffe coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  void removeItemCart(Coffe coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }
}
