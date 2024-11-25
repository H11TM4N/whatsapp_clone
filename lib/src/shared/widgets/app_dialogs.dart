import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/src/features/theme/theme.dart';

class AppDialog {
  static void dialog(
    BuildContext context,
    Widget content, {
    Color? bgColor,
    bool dismissible = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: dismissible,
      builder: (BuildContext dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          insetPadding: EdgeInsets.symmetric(horizontal: 15),
          backgroundColor: bgColor ?? appColors.white,
          shadowColor: bgColor ?? appColors.white,
          child: content,
        );
      },
    );
  }
}
