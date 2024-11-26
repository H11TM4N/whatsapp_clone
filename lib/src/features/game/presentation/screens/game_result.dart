import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class GameResult extends StatelessWidget {
  const GameResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final yourPick = spockTile;
    final housePick = lizardTile;
    bool yourWin = false;

    final isMobile = DeviceType(context).isMobile;

    return FittedBox(
      fit: isMobile ? BoxFit.none : BoxFit.contain,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 800,
          // maxHeight: 600,
        ),
        margin: EdgeInsets.only(top: /*!isMobile ? 50 :*/ 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: isMobile
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                _buildPick(
                  title: 'YOU PICKED',
                  pick: yourPick,
                  isMobile: isMobile,
                ),
                if (!isMobile)
                  _buildWinOrLoss(
                    yourWin: yourWin,
                    onTap: () {},
                  )
                else
                  XBox(50),
                _buildPick(
                  title: 'THE HOUSE PICKED',
                  pick: housePick,
                  isMobile: isMobile,
                ),
              ],
            ),
            if (isMobile) ...[
              YBox(40),
              _buildWinOrLoss(
                yourWin: yourWin,
                onTap: () {},
              ),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildPick({
    required String title,
    required String pick,
    required bool isMobile,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!isMobile) ...[
          AppText(
            title,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: appColors.white,
          ),
          YBox(40),
        ],
        SvgAsset(
          path: pick,
          height: isMobile ? 130 : 200,
        ),
        if (isMobile) ...[
          YBox(20),
          AppText(
            title,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: appColors.white,
          ),
        ],
      ],
    );
  }

  Widget _buildWinOrLoss({
    required bool yourWin,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        AppText(
          yourWin ? 'YOU WIN' : 'YOU LOSE',
          fontSize: 42,
          fontWeight: FontWeight.w700,
          color: appColors.white,
        ),
        YBox(20),
        PlayAgainButton(onTap: onTap),
      ],
    );
  }
}
