import 'package:belajar_2/componenets/coffee_tile.dart';
import 'package:belajar_2/models/coffe.dart';
import 'package:belajar_2/models/coffeShop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  void remove(Coffe coffe) {
    Provider.of<Coffeeshop>(context, listen: false).removeItemCart(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffeeshop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text("Your Cart"),
                    Expanded(
                      child: value.userCart.isEmpty
                          ? Center(child: Text('No coffee available'))
                          : ListView.builder(
                              itemCount: value.userCart
                                  .length, // Set itemCount to avoid index out of range
                              itemBuilder: (context, index) {
                                Coffe eachCoffee = value.userCart[index];
                                return CoffeeTile(
                                  coffe: eachCoffee,
                                  icon: Icon(Icons.delete),
                                  onPressed: () => remove(eachCoffee),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
