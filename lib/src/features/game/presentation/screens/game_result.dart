import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/src/features/game/data/data.dart';
import 'package:rock_paper_scissors/src/features/game/logic/blocs/blocs.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class GameResult extends StatelessWidget {
  const GameResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = DeviceType(context).isMobile;

    void playAgain() => context.read<GameBloc>().add(PlayAgainEvent());

    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
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
                      pick: state.yourPick,
                      isMobile: isMobile,
                    ),
                    if (!isMobile)
                      _buildWinOrLoss(
                        result: state.result,
                        onPlayAgain: playAgain,
                      )
                    else
                      XBox(50),
                    _buildPick(
                      title: 'THE HOUSE PICKED',
                      pick: state.housePick,
                      isMobile: isMobile,
                    ),
                  ],
                ),
                if (isMobile) ...[
                  YBox(40),
                  _buildWinOrLoss(
                    result: state.result,
                    onPlayAgain: playAgain,
                  ),
                ]
              ],
            ),
          ),
        );
      },
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
    required GameRes result,
    required VoidCallback onPlayAgain,
  }) {
    return Column(
      children: [
        AppText(
          result == GameRes.win
              ? 'YOU WIN'
              : result == GameRes.lose
                  ? 'YOU LOSE'
                  : result == GameRes.draw
                      ? 'DRAW'
                      : '',
          fontSize: 42,
          fontWeight: FontWeight.w700,
          color: appColors.white,
        ),
        YBox(20),
        PlayAgainButton(onTap: onPlayAgain),
      ],
    );
  }
}
