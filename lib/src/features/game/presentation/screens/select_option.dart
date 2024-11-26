import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/src/features/game/data/constants/constants.dart';
import 'package:rock_paper_scissors/src/features/game/logic/blocs/blocs.dart';
import 'package:rock_paper_scissors/src/features/game/presentation/components/components.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class SelectOptionState extends StatelessWidget {
  const SelectOptionState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void pickMove(String yourPick) {
      context.read<GameBloc>().add(YourPickEvent(yourPick: yourPick));
    }

    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return FittedBox(
          fit: BoxFit.contain,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 436,
              maxHeight: 400,
            ),
            child: AspectRatio(
              aspectRatio: 436 / 400,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 254 / 287,
                    child: SvgAsset(
                      path: bgTriangle,
                      // width: 254,
                      // height: 287,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GameOptionContainer(
                            icon: paperTile,
                            onTap: () => pickMove(PAPER),
                          ),
                          GameOptionContainer(
                            icon: scissorsTile,
                            onTap: () => pickMove(SCISSORS),
                          ),
                        ],
                      ),
                      GameOptionContainer(
                        icon: rockTile,
                        onTap: () => pickMove(ROCK),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
