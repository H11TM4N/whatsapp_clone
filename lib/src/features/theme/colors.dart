import 'package:flutter/material.dart';

class AppColors {
  //* Primary Gradients
  final Gradient scissorsGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 39, 0.89, 0.49).toColor(),
      HSLColor.fromAHSL(1.0, 40, 0.84, 0.53).toColor(),
    ],
  );
  final Gradient paperGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 230, 0.89, 0.62).toColor(),
      HSLColor.fromAHSL(1.0, 230, 0.89, 0.65).toColor(),
    ],
  );
  final Gradient rockGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 349, 0.71, 0.52).toColor(),
      HSLColor.fromAHSL(1.0, 349, 0.70, 0.56).toColor(),
    ],
  );
  final Gradient lizardGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 261, 0.73, 0.60).toColor(),
      HSLColor.fromAHSL(1.0, 261, 0.72, 0.63).toColor(),
    ],
  );
  final Gradient spockGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 189, 0.59, 0.53).toColor(),
      HSLColor.fromAHSL(1.0, 189, 0.58, 0.57).toColor(),
    ],
  );

  //* Neutral Colors
  final Color darkText = HSLColor.fromAHSL(1.0, 229, 0.25, 0.31).toColor();
  final Color scoreText = HSLColor.fromAHSL(1.0, 229, 0.64, 0.46).toColor();
  final Color headerOutline = HSLColor.fromAHSL(1.0, 217, 0.16, 0.45).toColor();

  //* Background Gradient
  final Gradient backgroundGradient = LinearGradient(
    colors: [
      HSLColor.fromAHSL(1.0, 214, 0.47, 0.23).toColor(),
      HSLColor.fromAHSL(1.0, 237, 0.49, 0.15).toColor(),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

