import 'package:flutter/material.dart';
import 'package:flutter_ui_ux/web_ui_1/components/reponsive_layout.dart';
import 'package:flutter_ui_ux/web_ui_1/components/send_button.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.0,
        right: ReponsiveLayout.isSmallScreen(context) ? 4 : 74,
        top: 10,
        bottom: 40,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                offset: Offset(0, 8),
                blurRadius: 8,
              ),
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Your Email Address"),
                ),
              ),
              Expanded(
                flex: 2,
                child: SendButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
