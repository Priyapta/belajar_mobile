import 'package:flutter/material.dart';

class detailOutcome extends StatelessWidget {
  const detailOutcome(
      {super.key,
      required this.money,
      required this.percent,
      required this.title,
      required this.type,
      required this.icon});
  final String title;
  final String type;
  final String percent;
  final String money;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Icon(icon),
          backgroundColor: Colors.amber[300],
        ),
        Column(
          children: [Text(title), Text(type)],
        ),
        Text(percent),
        Text(
          money,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
