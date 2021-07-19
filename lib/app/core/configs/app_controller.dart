import 'package:flare_flutter/flare_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:package_info/package_info.dart';

class AppController extends GetxController {
  @override
  Future<void> onInit() async {
    await getPackageInfo();
    keyBoardVisibility.onChange
        .listen((visible) => setKeyBoardIsShown(visible));
    FlareCache.doesPrune = false;
    super.onInit();
  }

  late PackageInfo packageInfo;
  var keyBoardVisibility = KeyboardVisibilityController();
  RxString appVersion = "".obs;
  RxBool keyboardIsOpen = false.obs;
  static bool production = true;

  void setKeyBoardIsShown(bool value) => keyboardIsOpen.value = value;

  late FocusScopeNode currentFocus;
  setCurrentFocus(context) {
    currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.focusedChild!.unfocus();
    }
  }

  Future<void> getPackageInfo() async {
    packageInfo = await PackageInfo.fromPlatform();
    appVersion.value = packageInfo.version;
  }
}
