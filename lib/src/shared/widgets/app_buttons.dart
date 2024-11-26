import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class RulesButton extends HookWidget {
  final VoidCallback onTap;
  const RulesButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isHovering = useState<bool>(false);
    return BounceInAnimation(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => isHovering.value = true,
        onExit: (_) => isHovering.value = false,
        child: Container(
          width: 128,
          height: 40,
          margin:
              EdgeInsets.only(bottom: DeviceType(context).isMobile ? 50 : 0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: isHovering.value ? appColors.scoreBoardGradient : null,
            border: Border.all(color: appColors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          child: AppText(
            'RULES',
            height: 0,
            fontSize: 16,
            color: isHovering.value ? Color(0xFF3B4262) : appColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class PlayAgainButton extends HookWidget {
  final VoidCallback onTap;
  const PlayAgainButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isHovering = useState<bool>(false);
    return BounceInAnimation(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => isHovering.value = true,
        onExit: (_) => isHovering.value = false,
        child: Container(
          width: 220,
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: appColors.scoreBoardGradient,
            borderRadius: BorderRadius.circular(8),
          ),
          child: AppText(
            'PLAY AGAIN',
            height: 0,
            fontSize: 16,
            color: isHovering.value ? Colors.red : Color(0xFF3B4262),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
