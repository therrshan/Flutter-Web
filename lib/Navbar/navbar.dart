import 'package:flutter/material.dart';
import 'package:my_portfolio/Navbar/desktop.dart';
import 'package:my_portfolio/Navbar/mobile.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const MobileNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}
