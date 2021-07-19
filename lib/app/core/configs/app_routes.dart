import '../../ui/pages/home/home_binding.dart';
import '../../ui/pages/home/home_page.dart';
import 'package:get/get.dart';

import 'app_binding.dart';

abstract class Routes {
  static const initial = '/';
}

abstract class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.initial,
      page: () => HomePage(),
      transition: Transition.native,
      bindings: [
        AppBinding(),
        HomeBinding(),
      ],
    ),
  ];
}
