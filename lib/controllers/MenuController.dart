import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/constants.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    log("message 123456 innit ");
    _selectedIndex.value = GetStorage().read(AppSession.currentPageIndex) !=
            null
        ? int.parse(GetStorage().read(AppSession.currentPageIndex).toString())
        : _selectedIndex.value;
  }

  int get selectedIndex => _selectedIndex.value;
  // int get selectedIndex =>
  //     GetStorage().read(AppSession.currentPageIndex) != null
  //         ? int.parse(GetStorage().read(AppSession.currentPageIndex).toString())
  //         : _selectedIndex.value;
  List<String> get menuItems => [
        'Home',
        'Solutions',
        'Why Propertise',
        'Contact',
        'Coming Soon!',
      ];
  List<MenuItems> menuItemsD = [
    MenuItems(
      title: "Home",
      route: AppRoutes.home,
      page: AppRoutes.home,
    ),
    MenuItems(
      title: "Solutions",
      // page: PagesScreen(),
      route: AppRoutes.solutions,
      page: AppRoutes.solutions,
    ),
    MenuItems(
      title: "Why Propertise",
      // page: AboutUs(),
      route: AppRoutes.whyPropertise,
      page: AppRoutes.whyPropertise,
    ),
    MenuItems(
      title: "Contact",
      // page: ContactScreen(),
      route: AppRoutes.contact,
      page: AppRoutes.contact,
    ),
    MenuItems(
      title: "Coming Soon!",
      // page: CartScreen(),
      route: AppRoutes.comingSoon,
      page: AppRoutes.comingSoon,
    ),
  ];

  GlobalKey<ScaffoldState> get scaffoldkey => scaffoldKey;

  void openOrCloseDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openEndDrawer();
    } else {
      scaffoldKey.currentState!.openEndDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
    GetStorage().write(AppSession.currentPageIndex, index);
  }
}

class MenuItems {
  String? title;
  String? route;
  String? page;
  MenuItems({this.title, this.page, this.route});
}
