import 'package:flutter/material.dart';
import 'package:flutter_ui_ux/web_ui_1/pages/landing_page.dart';

void main() => runApp(MaterialApp(
      title: 'Flutter Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    ));
