import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../shared/theme.dart';
import 'app_controller.dart';
import 'app_routes.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController(), permanent: true);
    return GestureDetector(
      onTap: () => appController.setCurrentFocus(context),
      child: ScreenUtilInit(
        builder: () {
          return GetMaterialApp(
            title: 'Clube ASC',
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.leftToRightWithFade,
            initialRoute: Routes.initial,
            getPages: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
