import 'package:flutter/material.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayoutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        if (screenWidth < 500) {
          // Mobile layout
          return mobile;
        } else if (screenWidth >= 500 && screenWidth < 1200) {
          // Tablet layout
          return tablet;
        } else {
          // Desktop layout
          return desktop;
        }
      },
    );
  }
}
