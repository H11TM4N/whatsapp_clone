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
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: appColors.white.withOpacity(.2892),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgAsset(path: isBonus ? logoBonus : logo),
          Container(
            width: 150,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              gradient: appColors.scoreBoardGradient,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                AppText(
                  'SCORE',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: appColors.scoreText,
                ),
                AppText(
                  '$score',
                  fontSize: 64,
                  letterSpacing: -8,
                  fontWeight: FontWeight.w700,
                  color: appColors.darkText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
