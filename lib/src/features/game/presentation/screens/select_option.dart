
import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/features/game/presentation/components/components.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class SelectOptionState extends StatelessWidget {
  const SelectOptionState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      ),
                      GameOptionContainer(
                        icon: scissorsTile,
                      ),
                    ],
                  ),
                  GameOptionContainer(
                    icon: rockTile,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
