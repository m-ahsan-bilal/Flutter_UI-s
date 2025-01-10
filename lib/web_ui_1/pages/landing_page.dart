import 'package:flutter/material.dart';
import 'package:flutter_ui_ux/web_ui_1/components/search.dart';
import 'package:flutter_ui_ux/web_ui_1/components/send_button.dart';

import '../components/nav_bar.dart';
import '../components/reponsive_layout.dart';

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
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ReponsiveLayout(
      LargeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class SmallChild extends StatelessWidget {
  const SmallChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(
                fontFamily: "Montserrat-Bold",
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xff859180),
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Welcome to ",
                style: TextStyle(fontSize: 60, color: Color(0xff859180)),
                children: [
                  TextSpan(
                      text: "Britu",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 20),
              child: Text("LET'S EXPLORE THE WORLD"),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.asset(
              "assets/images/image1.png",
              scale: 85,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff859180),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Welcome to ",
                      style: TextStyle(fontSize: 60, color: Color(0xff859180)),
                      children: [
                        TextSpan(
                            text: "Britu",
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, top: 20),
                    child: Text("LET'S EXPLORE THE WORLD"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
