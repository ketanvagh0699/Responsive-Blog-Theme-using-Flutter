import 'dart:developer';
import "dart:html" as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/controllers/MenuController.dart' as m;
import 'package:news/controllers/auth_controller.dart';
import 'package:news/controllers/theme_controller.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/main/components/app_button_widget.dart';
import '../../constants.dart';
import 'components/buttons_widget.dart';
import 'components/footer/footer.dart';
import 'components/header/first_section_widget.dart';
import 'components/header/header.dart';
import 'components/header/second_section_widget.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final m.MenuController _controller = Get.put(m.MenuController());
  final ThemeController themeController = Get.put(ThemeController());
  AuthController authController = Get.put(AuthController());
  ScrollController? primaryScrollController;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    if (GetStorage().read(AppSession.currentPageIndex) == null &&
        GetStorage().read(AppSession.currentPageRoute) == null) {
      GetStorage().write(AppSession.currentPageRoute, AppRoutes.home);
      GetStorage().write(AppSession.currentPageIndex, 0);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    primaryScrollController = PrimaryScrollController.maybeOf(context);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      primary: true,
      drawerEnableOpenDragGesture: false,
      key: _controller.scaffoldkey,
      // backgroundColor: dBGColor,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      endDrawer: SideMenu(),
      body: SingleChildScrollView(
        // controller: _scrollController,
        // physics: physics,
        controller: primaryScrollController,
        // controller: PrimaryScrollController.of(
        //     Navigator.of(context, rootNavigator: true).context),
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
                  ),
                ),
                child: Column(
                  children: [
                    Header(),
                    if (Responsive.isDesktop(context))
                      SizedBox(
                        height: kDefaultPadding * 2.5,
                      ),
                    FirstSection(),
                    SizedBox(
                      height: kDefaultPadding +
                          (Responsive.isDesktop(context) ? 100 : 0.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            SecondSectionWidget(),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [ButtonsWidget()],
            // ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Divider(
                color: Theme.of(context).dividerColor,
                height: Responsive.isDesktop(context) ? 160.0 : 100.0,
              ),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  Text(
                    "Easy, Simple and Advanced!",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      // color: appTextColor,
                      fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
                      height: 1.3,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: Responsive.isDesktop(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  Responsive(
                    mobile: Column(
                      children: [
                        ReportSectionWidget(
                          title:
                              "Generated automated weekly\nor monthly reports",
                          iconDKNormal: "assets/icons/report_graph_icon_dk.svg",
                          iconNormal: "assets/icons/report_graph_icon.svg",
                          subtitle: "",
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        ReportSectionWidget(
                          title:
                              "Execute advanced A/B testing to \nincrease conversion rates",
                          iconDKNormal: "assets/icons/report_notes_icon_dk.svg",
                          iconNormal: "assets/icons/report_notes_icon.svg",
                          subtitle: "",
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        ReportSectionWidget(
                          title:
                              "Do artificial intelligence based data \npredictions for the future",
                          iconDKNormal: "assets/icons/intelligence_icon_dk.svg",
                          iconNormal: "assets/icons/intelligence_icon.svg",
                          subtitle: "",
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            "assets/images/chart.jpg",
                            // height: 150.0,
                            // width: 200.0,
                          ),
                        ),
                      ],
                    ),
                    desktop: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              children: [
                                ReportSectionWidget(
                                  title:
                                      "Generated automated weekly\nor monthly reports",
                                  iconDKNormal:
                                      "assets/icons/report_graph_icon_dk.svg",
                                  iconNormal:
                                      "assets/icons/report_graph_icon.svg",
                                  subtitle: "",
                                ),
                                SizedBox(
                                  height: 50.0,
                                ),
                                ReportSectionWidget(
                                  title:
                                      "Execute advanced A/B testing to \nincrease conversion rates",
                                  iconDKNormal:
                                      "assets/icons/report_notes_icon_dk.svg",
                                  iconNormal:
                                      "assets/icons/report_notes_icon.svg",
                                  subtitle: "",
                                ),
                                SizedBox(
                                  height: 50.0,
                                ),
                                ReportSectionWidget(
                                  title:
                                      "Do artificial intelligence based data \npredictions for the future",
                                  iconDKNormal:
                                      "assets/icons/intelligence_icon_dk.svg",
                                  iconNormal:
                                      "assets/icons/intelligence_icon.svg",
                                  subtitle: "",
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          flex: 3,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              "assets/images/chart.jpg",
                              // height: 150.0,
                              // width: 200.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:
                  kDefaultPadding + (Responsive.isDesktop(context) ? 80 : 10.0),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Container(
                constraints: BoxConstraints(maxWidth: kMaxWidth),
                padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isDesktop(context) ? 75.0 : 20.0,
                  vertical: Responsive.isDesktop(context) ? 95.0 : 70.0,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: textPrimary.withOpacity(0.15),
                      // color: isHover
                      //     ? textPrimary.withOpacity(0.15)
                      //     : textPrimary.withOpacity(0),
                      offset: const Offset(0, 6),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Responsive(
                  mobile: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ready to start using Software today?",
                        style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          fontSize: Responsive.isDesktop(context) ? 45.0 : 27.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.left
                            : TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ButtonsWidget(),
                    ],
                  ),
                  desktop: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Ready to start using \nSoftware today?",
                        style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          fontSize: Responsive.isDesktop(context) ? 45.0 : 25.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      ButtonsWidget(),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: kDefaultPadding +
            //       (Responsive.isDesktop(context) ? 80 : 10.0),
            // ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 150.0 : 90.0,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: kMaxWidth -
                            (Responsive.isDesktop(context) ? 680.0 : 0)),
                    child: Column(
                      children: [
                        Text(
                          "Integrations that improve you workflow",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            // color: appTextColor,
                            fontSize:
                                Responsive.isDesktop(context) ? 45.0 : 32.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: Responsive.isDesktop(context)
                              ? TextAlign.center
                              : TextAlign.left,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet",
                          style: TextStyle(
                            height: 1.6,
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            // color: greenBorder,
                          ),
                          textAlign: Responsive.isDesktop(context)
                              ? TextAlign.center
                              : TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context)
                          ? 1
                          : Responsive.isTablet(context)
                              ? 2
                              : Responsive.isTablet(context)
                                  ? 3
                                  : 3,

                      // childAspectRatio: 9 / 7.4,
                      // childAspectRatio: (size.height /
                      //     (Responsive.isDesktop(context) ? 750 : 620)),
                      // childAspectRatio:
                      //     Responsive.isDesktop(context) ? 12 / 18 : 12.5 / 18,
                      // childAspectRatio: 8 / 13,
                      // childAspectRatio: 285 / (340),
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      mainAxisExtent: 330.0,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: integrationsDataList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(kDefaultPadding +
                            (Responsive.isDesktop(context) ? 10 : 0)),
                        decoration: BoxDecoration(
                          color: Theme.of(context).buttonColor,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: textPrimary.withOpacity(0.15),
                              // color: isHover
                              //     ? textPrimary.withOpacity(0.15)
                              //     : textPrimary.withOpacity(0),
                              offset: const Offset(0, 6),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Responsive.isDesktop(context)
                                ? Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: SvgPicture.asset(
                                          integrationsDataList[index]
                                              .img
                                              .toString(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            integrationsDataList[index]
                                                .name
                                                .toString(),
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .color,
                                              // color: appTextColor,
                                              fontSize: 27.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          AppButtonWidget(
                                            text: integrationsDataList[index]
                                                .btnName
                                                .toString(),
                                            textColor: whiteColor,
                                            onPressed: () {},
                                            fontSize: 15.0,
                                            backgroundColor: appPrimaryColor,
                                            borderSideColor: appPrimaryColor,
                                            foregroundColor: appPrimaryColor,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 21.0,
                                                vertical: 18.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: SvgPicture.asset(
                                          integrationsDataList[index]
                                              .img
                                              .toString(),
                                          height: 70,
                                          width: 70,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            integrationsDataList[index]
                                                .name
                                                .toString(),
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .color,
                                              // color: appTextColor,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 13.0,
                                          ),
                                          AppButtonWidget(
                                            text: integrationsDataList[index]
                                                .btnName
                                                .toString(),
                                            textColor: whiteColor,
                                            onPressed: () {},
                                            fontSize: 14.0,
                                            backgroundColor: appPrimaryColor,
                                            borderSideColor: appPrimaryColor,
                                            foregroundColor: appPrimaryColor,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.0,
                                                vertical: 9.0),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              integrationsDataList[index].subTitle.toString(),
                              style: TextStyle(
                                height: 1.6,
                                fontWeight: FontWeight.normal,
                                fontSize: 17.5,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: greenBorder,
                              ),
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                            ),
                            SizedBox(
                              height: 27.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Learn More',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 150.0 : 90.0,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Responsive(
                    mobile: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Resource Center",
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            // color: appTextColor,
                            fontSize: 31.0,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet",
                          style: TextStyle(
                            height: 1.8,
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            // color: greenBorder,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        AppButtonWidget(
                          text: "Visit Resource Center",
                          textColor: appPrimaryColor,
                          onPressed: () {},
                          borderSideColor: appPrimaryColor,
                          foregroundColor: appPrimaryColor,
                          width: Get.width,
                        ),
                      ],
                    ),
                    desktop: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          constraints: BoxConstraints(maxWidth: 450.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Resource Center",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                  // color: appTextColor,
                                  fontSize: Responsive.isDesktop(context)
                                      ? 45.0
                                      : 32.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet",
                                style: TextStyle(
                                  height: 1.6,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                  // color: greenBorder,
                                ),
                              ),
                            ],
                          ),
                        ),
                        AppButtonWidget(
                          text: "Visit Resource Center",
                          textColor: appPrimaryColor,
                          onPressed: () {},
                          borderSideColor: appPrimaryColor,
                          foregroundColor: appPrimaryColor,
                          width: 350.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 33.0,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    // padding: EdgeInsets.all(kDefaultPadding),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Responsive(
                        desktop: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: textPrimary.withOpacity(0.15),
                                // color: isHover
                                //     ? textPrimary.withOpacity(0.15)
                                //     : textPrimary.withOpacity(0),
                                offset: const Offset(0, 6),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Image.network(
                                  'https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fceeec3232dcb79655adf5e_image-blog-6-software-ui-kit-p-800.jpeg',
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                      kDefaultPadding + 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          AppButtonWidget(
                                            text: "Analytics",
                                            textColor: whiteColor,
                                            onPressed: () {},
                                            backgroundColor: appPrimaryColor,
                                            borderSideColor: appPrimaryColor,
                                            foregroundColor: appPrimaryColor,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.0,
                                                vertical: 20.0),
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Text(
                                            "Sep 1, 2022",
                                            style: TextStyle(
                                              height: 1.6,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .color,
                                              // color: greenBorder,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text(
                                        "12 things you didn’t know about data analytics",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .color,
                                          // color: appTextColor,
                                          fontSize: 27.0,
                                          fontWeight: FontWeight.w800,
                                          fontFamily: "Roboto",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, elucelserol consectetur adipiscing elit. Amet aliquet"
                                        " pellentesque donec aliquetelor faucibus quis maecenas morbi tortor.",
                                        style: TextStyle(
                                          height: 1.6,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 17,
                                          color: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .color,
                                          // color: greenBorder,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage(
                                                "https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc8274e56f44fcd53af5d8a_image-team-6-software-ui-kit.jpg"),
                                          ),
                                          SizedBox(
                                            width: 12.0,
                                          ),
                                          Text(
                                            "John Carter",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .color,
                                              // color: appTextColor,
                                              fontSize: 19.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        mobile: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              // BoxShadow(
                              //   color: textPrimary.withOpacity(0.15),
                              //   // color: isHover
                              //   //     ? textPrimary.withOpacity(0.15)
                              //   //     : textPrimary.withOpacity(0),
                              //   offset: const Offset(0, 6),
                              //   blurRadius: 10,
                              // ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fceeec3232dcb79655adf5e_image-blog-6-software-ui-kit-p-800.jpeg',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(kDefaultPadding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        AppButtonWidget(
                                          text: "Analytics",
                                          textColor: whiteColor,
                                          onPressed: () {},
                                          fontSize: 16.0,
                                          backgroundColor: appPrimaryColor,
                                          borderSideColor: appPrimaryColor,
                                          foregroundColor: appPrimaryColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 23.0, vertical: 12.0),
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        Text(
                                          "Sep 1, 2022",
                                          style: TextStyle(
                                            height: 1.6,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.0,
                                            color: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .color,
                                            // color: greenBorder,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      "12 things you didn’t know about data analytics",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: appTextColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, elucelserol consectetur adipiscing elit. Amet aliquet"
                                      " pellentesque donec aliquetelor faucibus quis maecenas morbi tortor.",
                                      style: TextStyle(
                                        height: 1.6,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17,
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: greenBorder,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25.0,
                                          backgroundImage: NetworkImage(
                                              "https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc8274e56f44fcd53af5d8a_image-team-6-software-ui-kit.jpg"),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Text(
                                          "John Carter",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .color,
                                            // color: appTextColor,
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33.0,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isMobile(context)
                          ? 1
                          : Responsive.isTablet(context)
                              ? 2
                              : Responsive.isTablet(context)
                                  ? 3
                                  : 3,
                      // childAspectRatio: size.height /
                      //     (Responsive.isDesktop(context) ? 1300 : 120),
                      // Responsive.isDesktop(context) ? 12 / 18 : 12.5 / 18,
                      // childAspectRatio: 8 / 13,
                      // childAspectRatio: 285 / (340),
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      mainAxisExtent: 540,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dataResource.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              // BoxShadow(
                              //   color: textPrimary.withOpacity(0.15),
                              //   // color: isHover
                              //   //     ? textPrimary.withOpacity(0.15)
                              //   //     : textPrimary.withOpacity(0),
                              //   offset: const Offset(0, 6),
                              //   blurRadius: 10,
                              // ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                dataResource[index].itemImg.toString(),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: kDefaultPadding,
                                    right: kDefaultPadding,
                                    top: kDefaultPadding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      dataResource[index].title.toString(),
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: appTextColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: "Roboto",
                                      ),
                                      maxLines: 2,
                                    ),
                                    SizedBox(
                                      height: 18.0,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet, elucelserol consectetur adipiscing elit. Amet aliquet"
                                      " pellentesque donec aliquetelor faucibus quis maecenas morbi tortor.",
                                      style: TextStyle(
                                        height: 1.6,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 17,
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                        // color: greenBorder,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height:
                                    Responsive.isDesktop(context) ? 50.0 : 35.0,
                                color: Theme.of(context).dividerColor,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: kDefaultPadding,
                                    right: kDefaultPadding,
                                    bottom: kDefaultPadding),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25.0,
                                          backgroundImage: NetworkImage(
                                              dataResource[index]
                                                  .img
                                                  .toString()),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dataResource[index]
                                                  .name
                                                  .toString(),
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .color,
                                                // color: appTextColor,
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6.0,
                                            ),
                                            Text(
                                              dataResource[index]
                                                  .date
                                                  .toString(),
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .color,
                                                // color: appTextColor,
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    AppButtonWidget(
                                      text: dataResource[index]
                                          .btnName
                                          .toString(),
                                      textColor: whiteColor,
                                      onPressed: () {},
                                      fontSize: 16.0,
                                      backgroundColor: appPrimaryColor,
                                      borderSideColor: appPrimaryColor,
                                      foregroundColor: appPrimaryColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 23.0, vertical: 12.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height:
                  kDefaultPadding + (Responsive.isDesktop(context) ? 80 : 10.0),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Responsive(
                mobile: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Ready to start using Software today?",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: Responsive.isDesktop(context) ? 45.0 : 32.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: Responsive.isDesktop(context)
                          ? TextAlign.left
                          : TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonsWidget(),
                    SizedBox(
                      height: 35.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/dashboard.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                tablet: Column(
                  children: [
                    Text(
                      "Ready to start using Software today?",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: Responsive.isDesktop(context) ? 45.0 : 35.0,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: Responsive.isDesktop(context)
                          ? TextAlign.left
                          : TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ButtonsWidget(),
                    SizedBox(
                      height: 15.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "assets/images/dashboard.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                desktop: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            "Ready to start using Software today?",
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              // color: appTextColor,
                              fontSize:
                                  Responsive.isDesktop(context) ? 45.0 : 25.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Responsive.isDesktop(context)
                              ? Row(
                                  children: [
                                    ButtonsWidget(),
                                  ],
                                )
                              : ButtonsWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/images/dashboard.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height:
                  kDefaultPadding + (Responsive.isDesktop(context) ? 80 : 10.0),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

List<DataResourceModel> integrationsDataList = [
  DataResourceModel(
    name: "Facebook",
    subTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id in sed porta orci lacus gravida donec vel.",
    btnName: "Communication",
    img: "assets/icons/ic_facebook.svg",
  ),
  DataResourceModel(
    name: "Twitter",
    subTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id in sed porta orci lacus gravida donec vel.",
    btnName: "Social Network",
    img: "assets/icons/ic_twitter.svg",
  ),
  DataResourceModel(
    name: "Messenger",
    subTitle:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id in sed porta orci lacus gravida donec vel.",
    btnName: "Communication",
    img: "assets/icons/ic_facebook.svg",
  ),
];

class DataResourceModel {
  String? title;
  String? subTitle;
  String? name;
  String? img;
  String? date;
  String? btnName;
  String? itemImg;

  DataResourceModel({
    this.title,
    this.btnName,
    this.date,
    this.img,
    this.name,
    this.subTitle,
    this.itemImg,
  });
}

List<DataResourceModel> dataResource = [
  DataResourceModel(
    title: "The state of marketing analytics in 2021",
    subTitle: "",
    date: "Sep 1, 2022",
    name: "Jenn Hiller",
    img:
        "data:image/jpeg;base64,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",
    btnName: "Analytics",
    itemImg:
        "https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc829209d23b079cf8c7a45_image-blog-4-software-ui-kit-p-500.jpeg",
  ),
  DataResourceModel(
    title: "How to implement user analytics for your mobile app",
    subTitle: "",
    date: "Sep 1, 2022",
    name: "Mark Breslin",
    img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU",
    btnName: "Analytics",
    itemImg:
        "https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc977acf83c90fe217c7eda_image-blog-2-software-ui-kit-p-800.jpeg",
  ),
  DataResourceModel(
    title: "How to make data-driven decisions with your team",
    subTitle: "",
    date: "Sep 1, 2022",
    name: "Soophie Moore",
    img:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLe5PABjXc17cjIMOibECLM7ppDwMmiDg6Dw&usqp=CAU",
    btnName: "KPIs",
    itemImg:
        "https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc81c58f02d4d97c1fd1ac4_image-blog-1-software-template-p-800.jpeg",
  ),
];

class ReportSectionWidget extends StatelessWidget {
  final String iconNormal;
  final String iconDKNormal;
  final String title;
  final String subtitle;
  const ReportSectionWidget({
    Key? key,
    required this.iconNormal,
    required this.iconDKNormal,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          Get.find<ThemeController>().isDarkMode ? iconDKNormal : iconNormal,
          // ? "assets/icons/intelligence_icon_dk.svg"
          // : "assets/icons/intelligence_icon.svg",
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          // "Generated automated weekly\nor monthly reports",
          style: TextStyle(
            color: Theme.of(context).textTheme.displayLarge!.color,
            // color: appTextColor,
            fontSize: 26.0,
            height: 1.5,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam augue eget at massa. Placerat nisi, ut massa ut amet eget. Sit purus, cras hendrerit volutpat tortor vel imperdiet hac. Id quis et vita.",
          style: TextStyle(
            height: 1.8,
            fontWeight: FontWeight.normal,
            fontSize: 17,
            color: Theme.of(context).textTheme.displayLarge!.color,
            // color: greenBorder,
          ),
        ),
      ],
    );
  }
}

/// scroll
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
        // etc.
      };
}
