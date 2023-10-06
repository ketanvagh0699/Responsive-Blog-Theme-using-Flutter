import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/controllers/MenuController.dart' as menu;

import '../../../constants.dart';
import '../../../controllers/auth_controller.dart';
import '../../../controllers/theme_controller.dart';
import '../../auth/forgot_password.dart';
import '../../auth/login_screen.dart';
import '../../auth/new_password.dart';
import '../../auth/otp_verify_screen.dart';
import '../../auth/select_role_screen.dart';

class SideMenu extends StatelessWidget {
  final menu.MenuController _controller = Get.put(menu.MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            image: Get.find<ThemeController>().getThemeMode.value == 2
                ? DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      greenBorder.withOpacity(.5),
                      BlendMode.darken,
                    ),
                  )
                : null,
            // image: DecorationImage(
            //   image: AssetImage("assets/images/background.png"),
            //   fit: BoxFit.cover,
            //   colorFilter: ColorFilter.mode(
            //     greenBorder.withOpacity(.75),
            //     BlendMode.darken,
            //   ),
            // ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SvgPicture.asset(
                      //   "assets/icons/name_logo.svg",
                      //   // "assets/icons/logo.png",
                      //   height: 50.0,
                      //   // width: 65.0,
                      //   // color: whiteColor,
                      //   color: GetStorage().read(AppSession.isThemeMode) == 2
                      //       ? whiteColor
                      //       : appPrimaryColor,
                      // ),
                      Image.asset(
                        GetStorage().read(AppSession.isThemeMode) == 2
                            ? "assets/icons/name_logo_w.png"
                            : "assets/icons/name_logo_g.png",
                        // "assets/icons/logo.png",
                        height: 50.0,
                        // width: 65.0,
                        // color: whiteColor,
                        // color: GetStorage().read(AppSession.isThemeMode) == 2
                        //     ? whiteColor
                        //     : appPrimaryColor,
                      ),
                      InkWell(
                        onTap: () {
                          // log("message close icon --> ");
                          // _controller.openOrCloseDrawer();
                          Scaffold.of(context).closeEndDrawer();
                        },
                        child: Icon(
                          Icons.cancel_outlined,
                          color: GetStorage().read(AppSession.isThemeMode) == 2
                              ? whiteColor
                              : appPrimaryColor,
                        ),
                      ),
                      // SizedBox(
                      //   width: 10.0,
                      // ),
                      // Text(
                      //   "Propertise",
                      //   style: TextStyle(
                      //     color: whiteColor,
                      //     fontSize: 30.0,
                      //   ),
                      // ),
                    ],
                  ),
                  // child: SvgPicture.asset("assets/icons/logo.svg"),
                ),
              ),
              ...List.generate(
                _controller.menuItemsD.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  item: _controller.menuItemsD[index],
                  press: () {
                    log("message check drawer data --> ${_controller.menuItemsD[index].title}");
                    _controller.setMenuIndex(index);
                    Scaffold.of(context).closeEndDrawer();
                    Navigator.pushNamed(
                        context, _controller.menuItemsD[index].page!);
                    // Navigator.push(
                    //     context,
                    //     PageRouteBuilder(
                    //         pageBuilder: (context, a, b) =>
                    //             _controller.menuItemsD[index].page!));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             _controller.menuItemsD[index].page!));
                    // Get.to(() => _controller.menuItemsD[index].page);
                  },
                ),
              ),
              PopupMenuButton(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding, vertical: 10.0),
                  child: Text(
                    "Theme",
                    style: TextStyle(
                      color: GetStorage().read(AppSession.isThemeMode) == 2
                          ? whiteColor
                          : Theme.of(context).textTheme.displayLarge!.color,
                      fontFamily: "Roboto",
                      letterSpacing: .9,
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                onSelected: (result) {
                  log("message result --> $result");
                  if (result == 0) {
                    Get.find<ThemeController>().toggleTheme(false, 0);
                  } else if (result == 1) {
                    Get.find<ThemeController>().toggleTheme(true, 1);
                  } else if (result == 2) {
                    Get.find<ThemeController>().toggleTheme(false, 2);
                  }
                  Get.changeThemeMode(
                    result == 1 ? ThemeMode.dark : ThemeMode.light,
                  );
                  // Get.changeThemeMode(result == 0
                  //     ? ThemeMode.light
                  //     : result == 1
                  //         ? ThemeMode.dark
                  //         : result == 2
                  //             ? ThemeMode.light
                  //             : ThemeMode.light);
                  Get.find<ThemeController>().refresh();
                  Get.find<ThemeController>().getSystemMode();

                  // setState(() {
                  // _selection = result;
                  // });
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 0,
                    child: Text('Light Theme'),
                  ),
                  const PopupMenuItem(
                    value: 1,
                    child: Text('Dark Theme'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('Vector Theme'),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 280.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: primaryWhite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 35.0, vertical: 18.0),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color:
                                GetStorage().read(AppSession.isThemeMode) == 2
                                    ? whiteColor
                                    : appPrimaryColor,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        disabledForegroundColor: primaryWhite.withOpacity(0.38),
                        // backgroundColor: buttonColor ?? whiteColor,
                        // fixedSize: Size(
                        //   width ?? MediaQuery.of(context).size.width,
                        //   height ?? 48,
                        // ),
                        alignment: Alignment.center,
                        // textStyle: AppTextStyle.normalSemiBold16
                        //     .copyWith(color: titleColor ?? appPrimaryDark)),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: GetStorage().read(AppSession.isThemeMode) == 2
                              ? whiteColor
                              : appPrimaryColor,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Obx(
                              () => Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: getStepsWidget(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AuthController authController = Get.find<AuthController>();

  Widget? getStepsWidget() {
    Widget? ad;
    switch (authController.stepsIndex.value) {
      case 0:
        ad = LoginScreen();
        break;
      case 1:
        ad = RoleSelectScreen();
        break;
      case 2:
        ad = OTPVerifyScreen();
        break;
      case 3:
        ad = ForgotPasswordScreen();
        break;
      case 4:
        ad = NewPasswordScreen();
        break;
      default:
        ad = LoginScreen();
        break;
    }
    return ad;
  }
}

class DrawerItem extends StatelessWidget {
  final menu.MenuItems item;
  final bool isActive;
  // final VoidCallback press;
  final void Function()? press;

  const DrawerItem({
    Key? key,
    required this.item,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      selected: isActive,
      selectedTileColor: kPrimaryColor,
      onTap: press,
      title: Text(
        item.title.toString(),
        style: TextStyle(
          color: GetStorage().read(AppSession.isThemeMode) == 2
              ? whiteColor
              : Theme.of(context).textTheme.displayLarge!.color,
          fontFamily: "Roboto",
          letterSpacing: .9,
          fontWeight: FontWeight.normal,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
