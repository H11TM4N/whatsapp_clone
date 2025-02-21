import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class GameOptionContainer extends HookWidget {
  final String icon;
  final double? size;
  final VoidCallback onTap;
  const GameOptionContainer({
    super.key,
    required this.icon,
    this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isHovering = useState<bool>(false);

    return icon.isEmpty
        ? Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.1),
              shape: BoxShape.circle,
            ),
          )
        : Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isHovering.value
                  ? appColors.white.withOpacity(.05)
                  : Colors.transparent,
            ),
            child: GestureDetector(
              onTap: onTap,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (_) => isHovering.value = true,
                onExit: (_) => isHovering.value = false,
                child: SvgAsset(
                  path: icon,
                  height: size,
                  width: size,
                ),
              ),
            ),
          );
  }
}
