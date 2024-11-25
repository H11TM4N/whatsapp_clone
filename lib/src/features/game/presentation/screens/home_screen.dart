import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: appColors.backgroundGradient,
        ),
        child: AppColumn(
          children: [
            AppText(
              'Home Screen',
              color: Colors.white,
            ),
            SvgAsset(path: iconLizard),
          ],
        ),
      ),
    );
  }
}
