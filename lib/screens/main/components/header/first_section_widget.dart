import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/screens/main/components/buttons_widget.dart';
import 'package:news/controllers/MenuController.dart' as m;
import '../../../../constants.dart';
import '../../../../controllers/theme_controller.dart';
import '../../../../responsive.dart';
import '../app_button_widget.dart';

class FirstSection extends StatefulWidget {
  const FirstSection({Key? key}) : super(key: key);

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(kDefaultPadding),
      // constraints: BoxConstraints(),
      constraints: BoxConstraints(maxWidth: kMaxWidth),

      child: Responsive(
        desktop: Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: LeftHeaderWidget(),
            )),
            Expanded(
              child: Container(
                height: Get.height * .63,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      "assets/images/dashboard.jpg",
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      right: -300.0,
                      bottom: -40.0,
                      top: -40.0,
                      left: -5.0,
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
          ],
        ),
        // desktop: Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Expanded(child: LeftHeaderWidget()),
        //     Expanded(
        //       flex: 2,
        //       child: SizedBox(
        //         height: MediaQuery.of(context).size.height * 0.58,
        //         child: ClipRRect(
        //           borderRadius: BorderRadius.circular(15.0),
        //           child: Image.asset(
        //             "assets/images/dashboard.jpg",
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //         // child: Stack(
        //         //   clipBehavior: Clip.none,
        //         //   children: [
        //         //     Positioned(
        //         //       child: Image.network(
        //         //         'https://assets.website-files.com/5fbd60e9c0e04c6e2ff0c2e0/5fc9448bfda933148076cf5f_image-home-hero-v2-software-ui-kit.png',
        //         //         fit: BoxFit.fill,
        //         //         color: Colors.transparent,
        //         //         loadingBuilder: (
        //         //           BuildContext context,
        //         //           Widget child,
        //         //           ImageChunkEvent? loadingProgress,
        //         //         ) {
        //         //           if (loadingProgress == null) return child;
        //         //           return Center(
        //         //             child: CupertinoActivityIndicator(
        //         //               radius: 10.0,
        //         //             ),
        //         //           );
        //         //         },
        //         //       ),
        //         //     ),
        //         //     Positioned(
        //         //       right: -400.0,
        //         //       bottom: -70.0,
        //         //       top: -70.0,
        //         //       left: 0.0,
        //         //       child: ClipRRect(
        //         //         borderRadius: BorderRadius.circular(15.0),
        //         //         child: Image.asset(
        //         //           "assets/images/dashboard.jpg",
        //         //           fit: BoxFit.fill,
        //         //         ),
        //         //       ),
        //         //     )
        //         //   ],
        //         // ),
        //       ),
        //     ),
        //   ],
        // ),
        mobile: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              LeftHeaderWidget(),
              SizedBox(
                height: 25.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/images/dashboard.jpg",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LeftHeaderWidget extends StatelessWidget {
  const LeftHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'A New Generation Solution to Manage All Your Property Needs',
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 55.0 : 35.0,
              fontWeight: FontWeight.w800,
              color: whiteColor,
              // color: Get.find<ThemeController>().getThemeMode.value == 2
              //     ? whiteColor
              //     : Theme.of(context).textTheme.displayLarge!.color,
              height: 1.15,
            ),
            textAlign: TextAlign.left,
            // textAlign: Responsive.isDesktop(context)
            //     ? TextAlign.left
            //     : TextAlign.center,
            maxLines: 3,
          ),

          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            'Register and get free access to our Beta version today!',
            maxLines: 3,
            textAlign: TextAlign.left,
            // textAlign: Responsive.isDesktop(context)
            //     ? TextAlign.left
            //     : TextAlign.center,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 19.0 : 16.5,
              fontWeight: FontWeight.w400,
              color: whiteColor,
              // color: Get.find<ThemeController>().getThemeMode.value == 2
              //     ? whiteColor
              //     : Theme.of(context).textTheme.displayLarge!.color,
              height: 1.7,
              // letterSpacing: 0.5,
            ),
          ),

          SizedBox(
            height:
                kDefaultPadding + (Responsive.isDesktop(context) ? 25 : 5.0),
          ),
          if (Responsive.isMobile(context))
            AppButtonWidget(
              text: "Get Demo",
              textColor: whiteColor,
              onPressed: () {
                // Get.find<m.MenuController>().setMenuIndex(2);
              },
              backgroundColor: appPrimaryColor,
              borderSideColor: appPrimaryColor,
              foregroundColor: appPrimaryColor,
              width: Get.width,
            ),
          // if (Responsive.isMobile(context))
          //   SizedBox(
          //     height: 15.0,
          //   ),
          // if (Responsive.isMobile(context))
          //   AppButtonWidget(
          //     text: "Free trial",
          //     textColor: Get.find<ThemeController>().getThemeMode.value == 2
          //         ? whiteColor
          //         : appPrimaryColor,
          //     onPressed: () {},
          //     borderSideColor:
          //         Get.find<ThemeController>().getThemeMode.value == 2
          //             ? whiteColor
          //             : appPrimaryColor,
          //     foregroundColor: appPrimaryColor,
          //     width: Get.width,
          //   ),
          if (!Responsive.isMobile(context))
            Row(
              mainAxisAlignment: Responsive.isDesktop(context)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                AppButtonWidget(
                  text: "Get Demo",
                  textColor: whiteColor,
                  onPressed: () {
                    Get.find<m.MenuController>().setMenuIndex(3);
                    GetStorage()
                        .write(AppSession.currentPageRoute, AppRoutes.contact);
                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.contact, (route) => false);

                    // GetStorage()
                    //     .write(AppSession.currentPageRoute, AppRoutes.contact);
                    // Navigator.pushNamed(context,
                    //     GetStorage().read(AppSession.currentPageRoute));
                  },
                  backgroundColor: appPrimaryColor,
                  borderSideColor: appPrimaryColor,
                  foregroundColor: appPrimaryColor,
                ),
                // SizedBox(
                //   width: Responsive.isDesktop(context) ? 15.0 : 11.0,
                // ),
                // TextButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: primaryWhite,
                //     padding: EdgeInsets.symmetric(
                //       horizontal: Responsive.isDesktop(context) ? 50.0 : 32.0,
                //       vertical: Responsive.isDesktop(context) ? 25.0 : 20.0,
                //     ),
                //     shape: RoundedRectangleBorder(
                //       side: BorderSide(
                //         color:
                //             Get.find<ThemeController>().getThemeMode.value == 2
                //                 ? whiteColor
                //                 : appPrimaryColor,
                //         width: 1.5,
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
                //     'Free trial',
                //     style: TextStyle(
                //       fontWeight: FontWeight.w600,
                //       color: Get.find<ThemeController>().getThemeMode.value == 2
                //           ? whiteColor
                //           : appPrimaryColor,
                //       fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
                //       height: 1.5,
                //     ),
                //   ),
                //   onPressed: () {},
                // ),
              ],
            ),
          SizedBox(
            height:
                kDefaultPadding + (Responsive.isDesktop(context) ? 25 : 10.0),
          ),
          RichText(
            maxLines: 2,
            text: new TextSpan(
              text: 'Go ahead and ',
              style: TextStyle(
                color: white,
                // color: Get.find<ThemeController>().getThemeMode.value == 2
                //     ? whiteColor
                //     : Theme.of(context).textTheme.displayLarge!.color,
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.4,
                fontSize: Responsive.isDesktop(context) ? 22.0 : 17.0,
                fontFamily: "Roboto",
              ),
              children: <TextSpan>[
                new TextSpan(
                  text: 'prioritise',
                  style: TextStyle(
                    color: white,
                    // color: Get.find<ThemeController>().getThemeMode.value == 2
                    //     ? whiteColor
                    //     : Theme.of(context).textTheme.displayLarge!.color,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 1.5,
                    fontSize: Responsive.isDesktop(context) ? 22.0 : 17.0,
                    fontFamily: "Roboto",
                  ),
                ),
                new TextSpan(
                  text: ' your ',
                  style: TextStyle(
                    color: whiteColor,
                    // color: Get.find<ThemeController>().getThemeMode.value == 2
                    //     ? whiteColor
                    //     : Theme.of(context).textTheme.displayLarge!.color,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontSize: Responsive.isDesktop(context) ? 22.0 : 17.0,
                    height: 1.5,
                  ),
                ),
                new TextSpan(
                  text: 'property!',
                  style: TextStyle(
                    color: white,
                    // color: Get.find<ThemeController>().getThemeMode.value == 2
                    //     ? whiteColor
                    //     : Theme.of(context).textTheme.displayLarge!.color,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    height: 1.5,
                    fontSize: Responsive.isDesktop(context) ? 22.0 : 17.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            'Trusted by real estate professionals',
            maxLines: 3,
            textAlign: TextAlign.left,
            // textAlign: Responsive.isDesktop(context)
            //     ? TextAlign.left
            //     : TextAlign.center,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 19.0 : 16.5,
              fontWeight: FontWeight.w400,
              color: whiteColor,
              // color: Get.find<ThemeController>().getThemeMode.value == 2
              //     ? whiteColor
              //     : Theme.of(context).textTheme.displayLarge!.color,
              height: 1.7,
              // letterSpacing: 0.5,
            ),
          ),

          // SizedBox(
          //   height: kDefaultPadding - 5,
          // ),
          // Wrap(
          //   children: [
          //     ItemIconWidget(
          //       icon: Icons.layers,
          //       name: "Company",
          //     ),
          //     SizedBox(
          //       width: Responsive.isDesktop(context) ? 15.0 : 10.0,
          //     ),
          //     ItemIconWidget(
          //       icon: Icons.polymer_outlined,
          //       name: "Company",
          //     ),
          //     SizedBox(
          //       width: Responsive.isDesktop(context) ? 15.0 : 10.0,
          //     ),
          //     ItemIconWidget(
          //       icon: Icons.token_outlined,
          //       name: "Company",
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

class ItemIconWidget extends StatelessWidget {
  final String? name;
  final IconData? icon;
  const ItemIconWidget({
    Key? key,
    this.name,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Get.find<ThemeController>().getThemeMode.value == 2
                ? whiteColor
                : Theme.of(context).textTheme.displayLarge!.color,
            // color: appTextColor.withOpacity(.7),
            size: Responsive.isDesktop(context) ? 33.0 : 25.0,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            name!,
            style: TextStyle(
              color: Get.find<ThemeController>().getThemeMode.value == 2
                  ? whiteColor
                  : Theme.of(context).textTheme.displayLarge!.color,
              // color: appTextColor.withOpacity(.7),
              fontSize: Responsive.isDesktop(context) ? 31.0 : 20.0,
              fontWeight: FontWeight.w800,
            ),
          )
        ],
      ),
    );
  }
}
