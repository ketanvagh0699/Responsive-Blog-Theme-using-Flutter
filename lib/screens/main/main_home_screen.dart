import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/controllers/MenuController.dart' as m;
import 'package:news/controllers/auth_controller.dart';
import 'package:news/screens/main/components/footer/footer.dart';
import '../../constants.dart';
import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import 'components/header/header.dart';
import 'components/side_menu.dart';

class MainHomeScreen extends StatefulWidget {
  final Widget? child;
  final Widget? firstSection;
  const MainHomeScreen({
    Key? key,
    required this.child,
    this.firstSection,
  }) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final m.MenuController _controller = Get.put(m.MenuController());
  final ThemeController themeController = Get.put(ThemeController());
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    // Scroll to a specific position with animation
  }

  @override
  Widget build(BuildContext context) {
    // primaryScrollController = PrimaryScrollController.maybeOf(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      primary: true,
      drawerEnableOpenDragGesture: false,
      key: _controller.scaffoldkey,
      // backgroundColor: dBGColor,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      endDrawer: SideMenu(),
      body: SingleChildScrollView(
        // controller: controller,
        // controller: primaryScrollController,
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Get.find<ThemeController>().isDarkMode
                            ? greenBorder.withOpacity(.75)
                            : greenBorder.withOpacity(.38),
                        BlendMode.darken,
                      ),
                    )),
                child: Column(
                  children: [
                    Header(),
                    // if (GetStorage().read(AppSession.isSolutionTabFormSubmit) &&
                    //     _controller.selectedIndex != 1)
                    //   Text(
                    //       "${(Get.find<AuthController>().isSolutionTabFormSubmit.value || _controller.selectedIndex == 1)} =-----${(Get.find<AuthController>().isSolutionTabFormSubmit.value)}=== ${(_controller.selectedIndex == 1)}"),
                    if (GetStorage().read(AppSession.isSolutionTabFormSubmit) &&
                        _controller.selectedIndex != 1)
                      if (widget.firstSection != null)
                        if (Responsive.isDesktop(context))
                          SizedBox(
                            height: kDefaultPadding * 2.5,
                          ),
                    if (GetStorage().read(AppSession.isSolutionTabFormSubmit) &&
                        _controller.selectedIndex != 1)
                      if (widget.firstSection != null)
                        Container(
                            constraints: BoxConstraints(maxWidth: kMaxWidth),
                            padding: EdgeInsets.all(kDefaultPadding + 10),
                            child: widget.firstSection!),
                    if (GetStorage().read(AppSession.isSolutionTabFormSubmit) &&
                        _controller.selectedIndex != 1)
                      if (widget.firstSection != null)
                        SizedBox(
                          height: kDefaultPadding +
                              (Responsive.isDesktop(context) ? 100 : 0.0),
                        ),
                  ],
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              SizedBox(
                  // height: kDefaultPadding + 10.0,
                  ),
            widget.child!,
            SizedBox(
              height:
                  kDefaultPadding + (Responsive.isDesktop(context) ? 80 : 10.0),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
