import 'package:flare_flutter/flare_cache.dart';
import 'package:flutter/material.dart';

import 'app/core/configs/app_controller.dart';
import 'app/core/configs/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlareCache.doesPrune = false;
  AppController.production = false;
  runApp(AppWidget());
}
