import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rock_paper_scissors/src/features/navigation/app_navigator.dart';
import 'package:rock_paper_scissors/src/features/navigation/routes.dart';
import 'package:rock_paper_scissors/src/shared/shared.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = AppNavigator(context);

    useEffect(() {
      Future.delayed(
        const Duration(milliseconds: 500),
        () => navigator.replaceAllNamed(AppRoutes.home),
      );
      return null;
    }, const []);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appColors.backgroundGradient,
        ),
      ),
    );
  }
}
