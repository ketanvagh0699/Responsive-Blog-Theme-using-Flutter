import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/controllers/MenuController.dart' as m;
import 'package:news/responsive.dart';
import 'package:news/ulits/size_config.dart';

import '../../../../constants.dart';
import '../socal.dart';
import '../web_menu.dart';

class Header extends StatelessWidget {
  final m.MenuController _controller = Get.find<m.MenuController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          // color: dCardColor,
          // image: DecorationImage(
          //   image: AssetImage("assets/images/background.png"),
          //   fit: BoxFit.cover,
          //   colorFilter: ColorFilter.mode(
          //     greenBorder.withOpacity(.75),
          //     BlendMode.darken,
          //   ),
          // ),
          ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding + 10),
              child: Responsive(
                mobile: MobileHeaderWidget(controller: _controller),
                tablet: MobileHeaderWidget(controller: _controller),
                desktop: DesktopHeaderWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DesktopHeaderWidget extends StatelessWidget {
  const DesktopHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SvgPicture.asset(
        //   "assets/icons/name_logo.svg",
        //   height: 50.0,
        //   // width: 65.0,
        //   // color: whiteColor,
        //   color: GetStorage().read(AppSession.isThemeMode) == 2
        //       ? whiteColor
        //       : appPrimaryColor,
        // ),
        Image.asset(
          "assets/icons/name_logo_w.png",
          // GetStorage().read(AppSession.isThemeMode) == 2
          //     ? "assets/icons/name_logo_w.png"
          //     : "assets/icons/name_logo_g.png",
          // "assets/icons/logo.png",
          height: 50.0,
          // width: 65.0,
          // color: whiteColor,
          // color: GetStorage().read(AppSession.isThemeMode) == 2
          //     ? whiteColor
          //     : appPrimaryColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        Spacer(),
        WebMenu(),
      ],
    );
  }
}

class MobileHeaderWidget extends StatelessWidget {
  const MobileHeaderWidget({
    Key? key,
    required m.MenuController controller,
  })  : _controller = controller,
        super(key: key);

  final m.MenuController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        // SvgPicture.asset(
        //   'assets/icons/pro_logo.svg',
        //   // "assets/icons/name_logo.svg",
        //   // "assets/icons/logo.png",
        //   height: 50.0,
        //   // width: 65.0,
        //   // color: whiteColor,
        //   color: GetStorage().read(AppSession.isThemeMode) == 2
        //       ? whiteColor
        //       : appPrimaryColor,
        // ),
        SizedBox(
          width: 10.0,
        ),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.menu,
            color: GetStorage().read(AppSession.isThemeMode) == 2
                ? whiteColor
                : appPrimaryColor,
          ),
          onPressed: () {
            // Scaffold.of(context).openEndDrawer();
            // _controller.openOrCloseDrawer();
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }
}
