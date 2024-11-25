import 'package:rock_paper_scissors/src/features/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog {
  static void dialog(
    Widget content, {
    Color? bgColor,
    bool dismissable = true,
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        insetPadding: EdgeInsets.zero,
        backgroundColor: bgColor ?? appColors.backgroundGradient.colors[0],
        shadowColor: bgColor ?? appColors.backgroundGradient.colors[0],
        child: content,
      ),
      barrierDismissible: dismissable,
    );
  }
}
