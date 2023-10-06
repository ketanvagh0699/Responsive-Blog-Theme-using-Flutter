import 'dart:developer';
import 'dart:html' as html;
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/controllers/MenuController.dart' as m;
import 'package:news/controllers/auth_controller.dart';
import 'package:news/screens/auth/forgot_password.dart';
import 'package:news/screens/auth/login_screen.dart';
import 'package:news/screens/auth/new_password.dart';
import 'package:news/screens/auth/otp_verify_screen.dart';
import 'package:news/screens/auth/select_role_screen.dart';

import '../../../constants.dart';
import '../../../controllers/theme_controller.dart';
import 'app_button_widget.dart';

class WebMenu extends StatefulWidget {
  @override
  State<WebMenu> createState() => _WebMenuState();
}

class _WebMenuState extends State<WebMenu> {
  var _formKey = GlobalKey<FormState>();
  final m.MenuController _controller = Get.put(m.MenuController());
  AuthController authController = Get.find<AuthController>();
  bool isReminder = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getPageIndex();
  }

  getPageIndex() {
    if (_controller.selectedIndex == 0) {
      Navigator.pushNamed(context, _controller.menuItemsD[0].page!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          ...List.generate(
            _controller.menuItemsD.length,
            // _controller.menuItems.length,
            (index) => WebMenuItem(
              item: _controller.menuItemsD[index],
              isActive: index == _controller.selectedIndex,
              press: () => _controller.setMenuIndex(index),
            ),
          ).toList(),
          // PopupMenuButton(
          //   child: Container(
          //     padding: EdgeInsets.all(8),
          //     child: Text(
          //       "Theme",
          //       style: TextStyle(
          //         color: GetStorage().read(AppSession.isThemeMode) == 2
          //             ? whiteColor
          //             : Theme.of(context).textTheme.displayLarge!.color,
          //         fontFamily: "Roboto",
          //         letterSpacing: .9,
          //         fontWeight: FontWeight.normal,
          //         fontSize: 18.0,
          //       ),
          //     ),
          //   ),
          //   onSelected: (result) {
          //     log("message result --> $result");
          //     if (result == 0) {
          //       Get.find<ThemeController>().toggleTheme(false, 0);
          //     } else if (result == 1) {
          //       Get.find<ThemeController>().toggleTheme(true, 1);
          //     } else if (result == 2) {
          //       Get.find<ThemeController>().toggleTheme(false, 2);
          //     }
          //     Get.changeThemeMode(
          //       result == 1 ? ThemeMode.dark : ThemeMode.light,
          //     );
          //     // Get.changeThemeMode(result == 0
          //     //     ? ThemeMode.light
          //     //     : result == 1
          //     //         ? ThemeMode.dark
          //     //         : result == 2
          //     //             ? ThemeMode.light
          //     //             : ThemeMode.light);
          //     Get.find<ThemeController>().refresh();
          //     Get.find<ThemeController>().getSystemMode();

          //     setState(() {
          //       Get.find<ThemeController>().getSystemMode();
          //       // _selection = result;
          //     });
          //   },
          //   itemBuilder: (BuildContext context) => <PopupMenuEntry>[
          //     const PopupMenuItem(
          //       value: 0,
          //       child: Text('Light Theme'),
          //     ),
          //     const PopupMenuItem(
          //       value: 1,
          //       child: Text('Dark Theme'),
          //     ),
          //     const PopupMenuItem(
          //       value: 2,
          //       child: Text('Vector Theme'),
          //     ),
          //   ],
          // ),
          SizedBox(
            width: 60.0,
            height: 50.0,
            child: DayNightSwitcher(
              isDarkModeEnabled: Get.find<ThemeController>().isDarkMode,
              onStateChanged: (bool val) {
                Get.changeThemeMode(
                  val ? ThemeMode.dark : ThemeMode.light,
                );
                Get.find<ThemeController>().toggleTheme(val, val ? 1 : 0);
              },
            ),
          ),
          SizedBox(
            width: kDefaultPadding + 5,
          ),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     foregroundColor: primaryWhite,
          //     padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 22.0),
          //     shape: RoundedRectangleBorder(
          //       side: BorderSide(
          //         color: GetStorage().read(AppSession.isThemeMode) == 2
          //             ? whiteColor
          //             : Theme.of(context).textTheme.headline2!.color!,
          //       ),
          //       borderRadius: BorderRadius.circular(5),
          //     ),
          //     disabledForegroundColor: primaryWhite.withOpacity(0.38),
          //     // backgroundColor: buttonColor ?? whiteColor,
          //     // fixedSize: Size(
          //     //   width ?? MediaQuery.of(context).size.width,
          //     //   height ?? 48,
          //     // ),
          //     alignment: Alignment.center,
          //     // textStyle: AppTextStyle.normalSemiBold16
          //     //     .copyWith(color: titleColor ?? appPrimaryDark)),
          //   ),
          //   child: Text(
          //     "Login",
          //     style: TextStyle(
          //       color: GetStorage().read(AppSession.isThemeMode) == 2
          //           ? whiteColor
          //           : Theme.of(context).textTheme.displayMedium!.color!,
          //       fontFamily: "Roboto",
          //       fontWeight: FontWeight.w500,
          //       fontSize: 16.0,
          //     ),
          //   ),
          //   onPressed: () async {
          //     await FirebaseMessaging.instance
          //         .getToken(vapidKey: AppSession.vapIDKey)
          //         .then((value) {
          //       setState(() {
          //         AuthController().fcmToken = value!;
          //       });
          //     });
          //     Navigator.pushNamed(context, '/login');
          //     // html.window.open(
          //     //   'https://www.fluttercampus.com',
          //     //   "_self",
          //     //   'location=yes',
          //     // );
          //   },
          // ),

          // SizedBox(
          //   width: kDefaultPadding + 5,
          // ),

          // Padding(
          //   padding: EdgeInsets.only(top: 2),
          //   child: DayNightSwitcherIcon(
          //     isDarkModeEnabled: isDarkModeEnabled,
          //     onStateChanged: onStateChanged,
          //   ),
          // ),
          AppButtonWidget(
            text: "Login",
            textColor: whiteColor,
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
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            backgroundColor: appPrimaryColor,
            borderSideColor: appPrimaryColor,
            foregroundColor: appPrimaryColor,
          ),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     foregroundColor: appPrimaryDark,
          //     padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 22.0),
          //     shape: RoundedRectangleBorder(
          //       side: BorderSide(
          //         color: GetStorage().read(AppSession.isThemeMode) == 2
          //             ? whiteColor
          //             : Theme.of(context).textTheme.headline2!.color!,
          //       ),
          //       borderRadius: BorderRadius.circular(5),
          //     ),
          //     disabledForegroundColor: appPrimaryDark.withOpacity(0.38),
          //     backgroundColor: GetStorage().read(AppSession.isThemeMode) == 2
          //         ? whiteColor
          //         : Theme.of(context).textTheme.displayMedium!.color,
          //     // fixedSize: Size(
          //     //   width ?? MediaQuery.of(context).size.width,
          //     //   height ?? 48,
          //     // ),
          //     alignment: Alignment.center,
          //     // textStyle: AppTextStyle.normalSemiBold16
          //     //     .copyWith(color: titleColor ?? appPrimaryDark)),
          //   ),
          //   child: Text(
          //     "Login",
          //     style: TextStyle(
          //       color: Get.find<ThemeController>().getThemeMode.value == 0
          //           ? whiteColor
          //           : appPrimaryDark,
          //       fontFamily: "Roboto",
          //       fontWeight: FontWeight.w700,
          //       fontSize: 16.0,
          //     ),
          //   ),
          //   onPressed: () async {
          //     // await FirebaseMessaging.instance
          //     //     .getToken(vapidKey: AppSession.vapIDKey)
          //     //     .then((value) {
          //     //   setState(() {
          //     //     AuthController().fcmToken = value!;
          //     //   });
          //     // });
          //     showDialog(
          //       context: context,
          //       builder: (BuildContext context) {
          //         return Obx(
          //           () => Dialog(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(15.0)),
          //             child: getStepsWidget(),
          //           ),
          //         );
          //       },
          //     );
          //     // Navigator.pushNamed(context, AppRoutes.login);
          //   },
          // ),
        ],
      ),
    );
  }

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

  GlobalKey menuKey = GlobalKey();

  showMenus(BuildContext context) async {
    final render = menuKey.currentContext!.findRenderObject() as RenderBox;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        render.localToGlobal(Offset.zero).dx,
        render.localToGlobal(Offset.zero).dy + 50,
        double.infinity,
        double.infinity,
      ),
      items: [
        PopupMenuItem(
          child: Text("Create a website"),
        ),
        PopupMenuItem(
          child: Text("Top Ms commericial management"),
        ),
        PopupMenuItem(
          child: Text("Mobile inventory application"),
        ),
      ],
    );
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem({
    Key? key,
    required this.isActive,
    required this.item,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final m.MenuItems item;
  final VoidCallback press;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return whiteColor;
      // return GetStorage().read(AppSession.isThemeMode) == 2
      //     ? whiteColor
      //     : Theme.of(context).textTheme.displayLarge!.color!;
    } else if (!widget.isActive & _isHover) {
      return whiteColor.withOpacity(0.3);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.press();
        // Get.to(() => widget.item.page!);
        GetStorage().write(AppSession.currentPageRoute, widget.item.route);
        // Navigator.pushNamed(context, widget.item.page!);
        Navigator.pushNamedAndRemoveUntil(
            context, widget.item.page!, (route) => false);
        // Navigator.push(
        //     context,
        //     PageRouteBuilder(
        //         pageBuilder: (context, a, b) => widget.item.page!));
        // Navigator.push(context,
        //     MaterialPageRoute(builder: ((context) => widget.item.page!)));
        // Get.toNamed('/about');
      },
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: _borderColor(), width: 3),
          ),
        ),
        // child: WindowStyleDropdownMenu(
        //   onPressed: () {
        //     widget.press();
        //     // Get.to(() => widget.item.page!);
        //     Navigator.pushNamed(context, widget.item.page!);
        //   },
        //   buttonTitleStyle: TextStyle(
        //     color: GetStorage().read(AppSession.isThemeMode) == 2
        //         ? whiteColor
        //         : Theme.of(context).textTheme.displayLarge!.color,
        //     fontFamily: "Roboto",
        //     letterSpacing: .9,
        //     fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
        //     fontSize: 18.0,
        //   ),
        //   dropdownWidth: 300,
        //   dropdownBackgroundColor: Theme.of(context).buttonColor,
        //   buttonTitle: widget.item.title.toString(),
        //   dropdownItems: [
        //     ListTile(
        //       mouseCursor: SystemMouseCursors.click,
        //       trailing: Text('Ctrl + O',
        //           style: TextStyle(
        //             color: GetStorage().read(AppSession.isThemeMode) == 2
        //                 ? whiteColor
        //                 : Theme.of(context).textTheme.displayLarge!.color,
        //             fontFamily: "Roboto",
        //             letterSpacing: .9,
        //             fontWeight: FontWeight.normal,
        //             fontSize: 18.0,
        //           )),
        //       title: Text(
        //         'Open',
        //         style: TextStyle(
        //           color: GetStorage().read(AppSession.isThemeMode) == 2
        //               ? whiteColor
        //               : Theme.of(context).textTheme.displayLarge!.color,
        //           fontFamily: "Roboto",
        //           letterSpacing: .9,
        //           fontWeight: FontWeight.normal,
        //           fontSize: 18.0,
        //         ),
        //       ),
        //     ),
        //     ListTile(
        //       mouseCursor: SystemMouseCursors.click,
        //       trailing: Text('Ctrl + N',
        //           style: TextStyle(
        //             color: GetStorage().read(AppSession.isThemeMode) == 2
        //                 ? whiteColor
        //                 : Theme.of(context).textTheme.displayLarge!.color,
        //             fontFamily: "Roboto",
        //             letterSpacing: .9,
        //             fontWeight: FontWeight.normal,
        //             fontSize: 18.0,
        //           )),
        //       title: Text(
        //         'New',
        //         style: TextStyle(
        //           color: GetStorage().read(AppSession.isThemeMode) == 2
        //               ? whiteColor
        //               : Theme.of(context).textTheme.displayLarge!.color,
        //           fontFamily: "Roboto",
        //           letterSpacing: .9,
        //           fontWeight: FontWeight.normal,
        //           fontSize: 18.0,
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        child: Text(
          widget.item.title.toString(),
          style: TextStyle(
            color: white,
            // color: GetStorage().read(AppSession.isThemeMode) == 2
            // ? whiteColor
            // : Theme.of(context).textTheme.displayLarge!.color,
            fontFamily: "Roboto",
            letterSpacing: .9,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  OverlayEntry? overlayEntry2;
  bool showOverlay = false;
  int index = 0;
  List<Widget> widgets = [
    Container(height: 40, width: 60, color: Colors.red),
    Container(height: 40, width: 60, color: Colors.yellow),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
      child: TextButton(
        child: Text('Click Me'),
        onPressed: () {
          print('Clicked');
        },
      ),
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.black,
      child: TextButton(
        child: Text('Click Me'),
        onPressed: () {
          print('Clicked');
        },
      ),
    ),
  ];
  final layerLink = LayerLink();
  final textButtonFocusNode = FocusNode();
  final textButtonFocusNode1 = FocusNode();

  void _showOverlay(BuildContext context, int index) async {
    overlayState = Overlay.of(context);

    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            left: index == 0
                ? MediaQuery.of(context).size.width * 0.43
                : MediaQuery.of(context).size.width * 0.5,
            top: MediaQuery.of(context).size.height * 0.09,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }
                }
              },
              child: widgets[index],
            ),
          );
        });
    overlayEntry2 = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            left: index == 0
                ? MediaQuery.of(context).size.width * 0.43
                : MediaQuery.of(context).size.width * 0.5,
            top: MediaQuery.of(context).size.height * 0.13,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }
                }
              },
              child: widgets[index + 2],
            ),
          );
        });

    // overlayState!.insert(overlayEntry!);
    overlayState!.insertAll([overlayEntry!, overlayEntry2!]);
  }

  void removeOverlay() {
    overlayEntry!.remove();
    overlayEntry2!.remove();
  }

  @override
  void initState() {
    super.initState();
    textButtonFocusNode.addListener(() {
      if (textButtonFocusNode.hasFocus) {
        _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode1.addListener(() {
      if (textButtonFocusNode1.hasFocus) {
        _showOverlay(context, 1);
      } else {
        removeOverlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              focusNode: textButtonFocusNode,
              onHover: (val) {
                if (val) {
                  textButtonFocusNode.requestFocus();
                  showOverlay = true;
                }
              },
              onPressed: () {},
              child: const Text('Hover'),
            ),
            TextButton(
              focusNode: textButtonFocusNode1,
              onHover: (val) {
                if (val) {
                  textButtonFocusNode1.requestFocus();
                  showOverlay = true;
                }
              },
              onPressed: () {},
              child: const Text('Hover'),
            ),
          ],
        ),
      ),
    );
  }
}
