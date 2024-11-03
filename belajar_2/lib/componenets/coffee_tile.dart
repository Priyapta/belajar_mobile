import 'package:belajar_2/models/coffe.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffe coffe;
  final void Function()? onPressed;
  final Widget icon;
  const CoffeeTile(
      {super.key,
      required this.coffe,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(
          coffe.imagePath,
          width: 100,
        ),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
