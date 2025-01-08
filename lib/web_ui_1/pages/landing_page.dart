import 'package:flutter/material.dart';

import '../components/nav_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x0fff8f8f),
              Color(0xFFFCFDFD),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
