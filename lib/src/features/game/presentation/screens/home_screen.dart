import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/features/game/presentation/components/components.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

import 'game_result.dart';
import 'select_option.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          gradient: appColors.backgroundGradient,
        ),
        child: AppColumn(
          centerContent: !DeviceType(context).isMobile,
          children: [
            ScoreBoard(
              score: 12,
              isBonus: false,
            ),
            YBox(20),
            GameResult(),
          ],
        ),
      ),
      floatingActionButton: RulesButton(
        onTap: () {
          if (!DeviceType(context).isMobile) {
            AppDialog.dialog(
              context,
              GameRules(isDialog: true, isBonus: false),
            );
          } else {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: Border(),
              builder: (context) => GameRules(
                isDialog: false,
                isBonus: false,
              ),
            );
          }
        },
      ),
      floatingActionButtonLocation: DeviceType(context).isMobile
          ? FloatingActionButtonLocation.centerDocked
          : null,
    );
  }
}
