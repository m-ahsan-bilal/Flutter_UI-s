import 'package:flutter/material.dart';
import 'package:flutter_ui_ux/web_ui_1/components/reponsive_layout.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF86DD7),
              Color(0XFF3023AE),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                color: Color(0xff6078ae).withOpacity(.3),
                offset: Offset(0.0, 8.0),
                blurRadius: 8.0),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Notify",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Monserrat-Bold",
                        fontSize: ReponsiveLayout.isSmallScreen(context)
                            ? 12
                            : ReponsiveLayout.isMediumScreen(context)
                                ? 12
                                : 16,
                        letterSpacing: 1.0),
                  ),
                  SizedBox(
                    width: ReponsiveLayout.isSmallScreen(context)
                        ? 4
                        : ReponsiveLayout.isMediumScreen(context)
                            ? 6
                            : 8,
                  ),
                  Image.asset(
                    "assets/images/sent.png",
                    color: Colors.white,
                    width: ReponsiveLayout.isLareScreen(context)
                        ? 12
                        : ReponsiveLayout.isMediumScreen(context)
                            ? 12
                            : 20,
                    height: ReponsiveLayout.isSmallScreen(context)
                        ? 12
                        : ReponsiveLayout.isMediumScreen(context)
                            ? 12
                            : 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
