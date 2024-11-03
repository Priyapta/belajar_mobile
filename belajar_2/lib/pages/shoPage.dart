import 'package:belajar_2/componenets/coffee_tile.dart';
import 'package:belajar_2/models/coffe.dart';
import 'package:belajar_2/models/coffeShop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shopage extends StatefulWidget {
  const Shopage({super.key});

  @override
  State<Shopage> createState() => _ShopageState();
}

class _ShopageState extends State<Shopage> {
  void addToCart(Coffe coffe) {
    setState(() {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text('${coffe.name} Ditambahkan'),
      ));
      Provider.of<Coffeeshop>(context, listen: false).addItemCart(coffe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Coffeeshop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "How would you like the coffe",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: value.coffeShop.isEmpty
                    ? Center(child: Text('No coffee available'))
                    : ListView.builder(
                        itemCount: value.coffeShop.length,
                        itemBuilder: (context, index) {
                          Coffe eachcoffee = value.coffeShop[index];
                          return CoffeeTile(
                            coffe: eachcoffee,
                            icon: Icon(Icons.add),
                            onPressed: () => addToCart(eachcoffee),
                          );
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
