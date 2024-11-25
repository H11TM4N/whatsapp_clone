import 'package:rock_paper_scissors/src/shared/shared.dart';
import 'features/navigation/nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rock Paper Scissors',
      theme: appTheme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
