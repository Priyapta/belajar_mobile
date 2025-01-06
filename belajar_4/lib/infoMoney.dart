import 'package:flutter/material.dart';
import 'package:belajar_4/infoTable.dart';

class InfoMoney extends StatefulWidget {
  const InfoMoney({super.key});

  @override
  State<InfoMoney> createState() => _InfoMoneyState();
}

class _InfoMoneyState extends State<InfoMoney> {
  bool selectedIndex = true;
  int? index;
  late bool others;

  @overrideJ
  void initState() {
    super.initState();
    others = !selectedIndex;
  }

  void _updateSelectedIndex(int indexs) {
    setState(() {
      // Pilih indeks yang diklik, jika sudah dipilih maka hilangkan
      index = (index == indexs) ? null : indexs;

      // selectedIndex = !selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 97, 192, 102),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2),
        child: Column(
          children: [
            const Text(
              "Your Balance",
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              "\$15,500",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Memperbaiki penggunaan `isCliked`
                  InfoTable(
                    isCliked: index == 0
                        ? selectedIndex
                        : others, // Sederhanakan kondisi
                    onPressed: () => _updateSelectedIndex(0),
                  ),
                  InfoTable(
                    isCliked: index == 1
                        ? selectedIndex
                        : others, // Sederhanakan kondisi
                    onPressed: () => _updateSelectedIndex(1),
                  ),
                  InfoTable(
                    isCliked: index == 2
                        ? selectedIndex
                        : others, // Sederhanakan kondisi
                    onPressed: () => _updateSelectedIndex(2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
