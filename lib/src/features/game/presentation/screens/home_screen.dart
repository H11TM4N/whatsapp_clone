import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/features/game/presentation/components/components.dart';
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
            ScoreBoard(
              score: 12,
              isBonus: true,
            ),
            YBox(20),
            SizedBox(
              width: 436,
              height: 400,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgAsset(
                    path: bgTriangle,
                    width: 254,
                    height: 287,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GameOptionContainer(
                            icon: paperTile,
                            size: DeviceType(context).isMobile ? 133 : 150,
                          ),
                          GameOptionContainer(
                            icon: scissorsTile,
                            size: DeviceType(context).isMobile ? 133 : 150,
                          ),
                        ],
                      ),
                      GameOptionContainer(
                        icon: rockTile,
                        size: DeviceType(context).isMobile ? 133 : 150,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
