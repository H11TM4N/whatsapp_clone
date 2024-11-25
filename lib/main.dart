import 'src/app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Future.delayed(
    const Duration(milliseconds: 500),
    () => runApp(
      MyApp()
    ),
  );
}
