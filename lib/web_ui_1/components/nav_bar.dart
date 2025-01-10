import 'package:flutter/material.dart';
import '../components/reponsive_layout.dart';

class NavBar extends StatelessWidget {
  final navLinks = [
    "Home",
    "Products",
    "Features",
    "Contact",
  ];

  NavBar({super.key});

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Monserrat-Bold"),
        ),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
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
              const SizedBox(width: 16),
              const Text(
                "Britu",
                style: TextStyle(color: Colors.purple, fontSize: 26),
              ),
            ],
          ),
          if (!ReponsiveLayout.isSmallScreen(context))
            Row(
              children: [
                ...navItem(),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffC86DD7),
                          Color(0xff3023AE),
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff6078ea).withOpacity(.03),
                          offset: const Offset(0, 8),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1,
                            fontFamily: "Montserrat-Bold",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          else
            Icon(
              Icons.menu,
              size: 24,
            ),
        ],
      ),
    );
  }
}
