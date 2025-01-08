import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReponsiveLayout extends StatelessWidget {
  final dynamic LargeScreen;

  final dynamic smallScreen;

  final dynamic mediumScreen;

  const ReponsiveLayout({
    super.key,
    required this.LargeScreen,
    this.mediumScreen,
    this.smallScreen,
  });

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isLareScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return LargeScreen;
      } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
        return mediumScreen;
      } else {
        return smallScreen ?? LargeScreen;
      }
    });
  }

  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty('mediumScreen', mediumScreen));
  // }
}
