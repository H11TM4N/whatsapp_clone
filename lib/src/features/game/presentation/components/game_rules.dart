import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/features/navigation/app_navigator.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class GameRules extends StatelessWidget {
  final bool isDialog;
  final bool isBonus;
  const GameRules({
    super.key,
    required this.isDialog,
    required this.isBonus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isDialog ? const EdgeInsets.all(25) : null,
      child: Column(
        mainAxisSize: isDialog ? MainAxisSize.min : MainAxisSize.max,
        mainAxisAlignment:
            isDialog ? MainAxisAlignment.start : MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 320,
            child: Row(
              mainAxisAlignment: isDialog
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: [
                AppText(
                  'RULES',
                  color: appColors.darkText,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
                if (isDialog)
                  BounceInAnimation(
                    onTap: () => AppNavigator(context).popDialog(),
                    child: SvgAsset(path: iconClose),
                  ),
              ],
            ),
          ),
          YBox(20),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgAsset(path: isBonus ? imageRulesBonus : imageRules),
              if (!isDialog) YBox(30),
            ],
          ),
          if (!isDialog)
            BounceInAnimation(
              onTap: () => AppNavigator(context).popDialog(),
              child: SvgAsset(path: iconClose),
            ),
        ],
      ),
    );
  }
}
