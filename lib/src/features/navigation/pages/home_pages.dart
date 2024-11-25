import 'package:rock_paper_scissors/src/features/game/presentation/screens/home_screen.dart';
import 'package:rock_paper_scissors/src/features/navigation/routes.dart';
import 'package:get/get.dart';

List<GetPage> homePages = [
  GetPage(
    name: HomeRoutes.home,
    page: () => const HomeScreen(),
    transition: Transition.native,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
