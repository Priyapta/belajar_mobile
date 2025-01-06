import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  final bool isCliked; // Status dari parent widget
  final VoidCallback? onPressed; // Callback untuk mengubah status

  const InfoTable({
    super.key,
    required this.isCliked,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Panggil fungsi onPressed yang diberikan oleh parent
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isCliked
              ? Colors.white
              : Colors.green.shade200, // Warna berdasarkan status isCliked
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Income",
              style: TextStyle(
                  color: isCliked ? Colors.green[400] : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "\$0.00",
              style: TextStyle(
                  color: isCliked ? Colors.green[400] : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "+15%",
              style: TextStyle(
                  color: isCliked ? Colors.green[400] : Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
