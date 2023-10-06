// ignore_for_file: unrelated_type_equality_checks

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.system.obs;

  Rx<bool> isEncrypt = false.obs;
  RxInt getThemeMode = 0.obs;

  @override
  void onReady() {
    super.onReady();
    getSystemMode();
    // getEncryptMode();
  }

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  int get isAppThemeMode {
    log("message is call check ==> ${GetStorage().read(AppSession.isThemeMode)}");
    if (GetStorage().read(AppSession.isThemeMode) == null) {
      GetStorage().write(AppSession.isThemeMode, 0);
      getThemeMode.value = GetStorage().read(AppSession.isThemeMode);
      return 0;
    } else {
      getThemeMode.value = GetStorage().read(AppSession.isThemeMode);
      return GetStorage().read(AppSession.isThemeMode);
    }
    // if (themeMode == ThemeMode.system) {
    //   final brightness = SchedulerBinding.instance.window.platformBrightness;
    //   return brightness == Brightness.dark;
    // } else {
    //   return themeMode == ThemeMode.dark;
    // }
  }

  getSystemMode() {
    log("message ===> ${GetStorage().read(AppSession.isDarkThemeMode)}");
    var isCheck = GetStorage().read(AppSession.isDarkThemeMode);
    isAppThemeMode;
    log("message check dark mode --> $isCheck");
    if (isCheck == true) {
      themeMode.value = ThemeMode.dark;
      update();
    } else {
      themeMode.value = ThemeMode.light;
      update();
    }
  }

  getEncryptMode() {
    // var isCheck = GetStorage().read(AppSession.isDarkThemeMode);
    // log("message check dark mode --> $isCheck");
    if (isEncrypt.value == true) {
      isEncrypt.value = false;
      update();
    } else {
      isEncrypt.value = true;
      update();
    }
  }

  void toggleTheme(bool isOn, int intMode) {
    themeMode.value = isOn ? ThemeMode.dark : ThemeMode.light;
    GetStorage().write(AppSession.isDarkThemeMode, isOn);
    GetStorage().write(AppSession.isThemeMode, intMode);
    update();
    var isCheck = GetStorage().read(AppSession.isDarkThemeMode);
    log("message check after click dark mode --> $isCheck");
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    //   statusBarColor: isOn ? whiteColor.withOpacity(.1) : Colors.black,
    //   statusBarIconBrightness: Brightness.dark,
    // )
    //     // SystemUiOverlayStyle(
    //     //   statusBarColor: whiteColor.withOpacity(.1),
    //     //   statusBarIconBrightness: Brightness.light,
    //     // ),
    //     );
    // setThemeMode(isOn);
    update();
  }

  setThemeMode(bool isDark) {
    GetStorage().write(AppSession.isDarkThemeMode, isDark);
    var isCheck = GetStorage().read(AppSession.isDarkThemeMode);
    log("message check after click dark mode --> $isCheck");
    update();
  }
}
