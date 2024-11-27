import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class ScoreBoard extends StatelessWidget {
  final int score;
  final bool isBonus;

  const ScoreBoard({
    super.key,
    required this.score,
    required this.isBonus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DeviceType(context).isMobile ? 60 : 0),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          padding: EdgeInsets.all(15),
          constraints: BoxConstraints(
            maxWidth: 700,
            maxHeight: 150,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: appColors.white.withOpacity(.2892),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: AspectRatio(
            aspectRatio: 700 / 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: SvgAsset(path: isBonus ? logoBonus : logo),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 114,
                      maxWidth: 150,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      gradient: appColors.scoreBoardGradient,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: AspectRatio(
                      aspectRatio: 150 / 114,
                      child: Column(
                        children: [
                          AppText(
                            'SCORE',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: appColors.scoreText,
                          ),
                          AppText(
                            score > 99 ? '99+' : '$score',
                            fontSize: 64,
                            letterSpacing: -8,
                            fontWeight: FontWeight.w700,
                            color: appColors.darkText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
