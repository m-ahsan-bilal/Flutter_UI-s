import 'package:flutter/material.dart';
import '../components/reponsive_layout.dart';

class NavBar extends StatelessWidget {
  final navLinks = [
    "Home",
    " Products",
    "features",
    "Contact",
  ];

  NavBar({super.key});
  List<Widget> navItem() {
    return navLinks.map((text) {
      return const Padding(
        padding: EdgeInsets.only(left: 18),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 45,
          vertical: 38,
        ),
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF3023AE),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "B",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "Britu",
                  style: TextStyle(fontSize: 26),
                )
              ],
            ),
            if (!ReponsiveLayout.isSmallScreen(context))
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
          ],
        ));
  }
}
