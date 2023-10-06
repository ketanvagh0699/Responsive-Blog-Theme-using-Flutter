import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import '../main/components/header/second_section_widget.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  List<HowItWorkCardModel> dataListModel = [
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/1.png",
      'assets/images/securityTabs/1dk.png',
      'End-to-End Encryption',
      'All data is encrypted at all times whether at-rest or in-transit, using the highest encryption standards.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/2.png",
      'assets/images/securityTabs/2dk.png',
      'Data Backups',
      'We back up all data every 5 minutes to ensure data safety and recovery.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/3.png",
      'assets/images/securityTabs/3dk.png',
      'Unauthorized Access',
      'Firewalls are deployed to detect, block and protect data from unauthorized accesses',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/4.png",
      'assets/images/securityTabs/4dk.png',
      'Secure Online Payments',
      'Online payments done on Propertise are secure and Propertise will not have access to user card details.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/5.png",
      'assets/images/securityTabs/5dk.png',
      'Privacy',
      'Your data privacy is very important, so we’ve made sure that your data is encrypted so no one will have access to it.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/6.png",
      'assets/images/securityTabs/6dk.png',
      'Exporting Data',
      'You can easily back up any of your data by exporting it to your computer.',
    ),
  ];

  List<HowItWorkCardModel> userAccountDataListModel = [
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/7.png",
      'assets/images/securityTabs/7dk.png',
      '2-Step Verifications',
      'Users will receive an OTP (One Time Password) with each log in to ensure account holders are verified at all times.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/8.png",
      'assets/images/securityTabs/8dk.png',
      'Multiple Session Authorization',
      'Users can set single or multiple log-in sessions giving them control over how many log-in sessions can occur at the same time across different devices.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/10.png",
      'assets/images/securityTabs/10dk.png',
      'Device Authorization',
      'Users can set and authorize the devices they want to log-in from using one main device.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/11.png",
      'assets/images/securityTabs/11dk.png',
      'Controlled Access Roles',
      'Control what each user is exposed to, by enabling or disabling what they can view on the portal. You can even control the actions they can take as well (i,e, create, edit, delete, data exports, etc.).',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/12.png",
      'assets/images/securityTabs/12dk.png',
      'Activity Logs',
      'You can review the historical activities of users.',
    ),
    HowItWorkCardModel(
      0,
      "assets/images/securityTabs/13.png",
      'assets/images/securityTabs/13dk.png',
      'Unauthorized Log-in Detections',
      'Users are immediately notified for any unusual log-in activity that their account may experience and have the ability to act quick towards any unauthorized access attempts, keeping the account secure.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          "Data Security",
          style: TextStyle(
            color: Theme.of(context).textTheme.displayLarge!.color,
            // color: appTextColor,
            fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
            fontWeight: FontWeight.w700,
          ),
          textAlign:
              Responsive.isDesktop(context) ? TextAlign.center : TextAlign.left,
        ),
        SizedBox(
          height: 30.0,
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
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
            mainAxisExtent: Responsive.isDesktop(context) ? 380.0 : 300.0,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dataListModel.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(
                  kDefaultPadding + (Responsive.isDesktop(context) ? 10 : 0)),
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
                crossAxisAlignment: Responsive.isDesktop(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: Responsive.isDesktop(context)
                //     ? MainAxisAlignment.center
                //     : MainAxisAlignment.start,
                children: [
                  // SvgPicture.asset(
                  //   Get.find<ThemeController>().isDarkMode
                  //       ? widget.item.iconDK.toString()
                  //       : widget.item.icon.toString(),
                  // ),
                  Image.asset(
                    Get.find<ThemeController>().isDarkMode
                        ? dataListModel[index].iconDK
                        : dataListModel[index].icon,
                    height: Responsive.isDesktop(context) ? 100.0 : 70.0,
                  ),
                  // Icon(
                  //   Icons.access_alarm_outlined,
                  //   color: greenBg,
                  //   size: 50.0,
                  // ),
                  SizedBox(height: Responsive.isDesktop(context) ? 32 : 22),
                  Text(
                    dataListModel[index].title,
                    style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.isDesktop(context) ? 24.0 : 22.0,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      // color: appTextColor,
                    ),
                    textAlign: Responsive.isDesktop(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
                  SizedBox(height: Responsive.isDesktop(context) ? 16 : 14),
                  Text(
                    dataListModel[index].subtitle,
                    style: TextStyle(
                      height: 1.8,
                      fontWeight: FontWeight.w500,
                      fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      // color: greenBorder,
                    ),
                    textAlign: Responsive.isDesktop(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  )
                ],
              ),
            );
          },
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 150.0 : 50.0,
        ),
        Text(
          "User Account Security",
          style: TextStyle(
            color: Theme.of(context).textTheme.displayLarge!.color,
            // color: appTextColor,
            fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 30.0,
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
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
            mainAxisExtent: Responsive.isDesktop(context) ? 430.0 : 360.0,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: userAccountDataListModel.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(
                  kDefaultPadding + (Responsive.isDesktop(context) ? 5 : 0)),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: appPrimaryColor, width: 1.5),
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
                crossAxisAlignment: Responsive.isDesktop(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: Responsive.isDesktop(context)
                //     ? MainAxisAlignment.center
                //     : MainAxisAlignment.start,
                children: [
                  // SvgPicture.asset(
                  //   Get.find<ThemeController>().isDarkMode
                  //       ? widget.item.iconDK.toString()
                  //       : widget.item.icon.toString(),
                  // ),
                  index == 1
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              Get.find<ThemeController>().isDarkMode
                                  ? userAccountDataListModel[index].iconDK
                                  : userAccountDataListModel[index].icon,
                              height:
                                  Responsive.isDesktop(context) ? 100.0 : 70.0,
                            ),
                            Image.asset(
                              Get.find<ThemeController>().isDarkMode
                                  ? 'assets/images/securityTabs/9dk.png'
                                  : 'assets/images/securityTabs/9.png',
                              height:
                                  Responsive.isDesktop(context) ? 80.0 : 50.0,
                            ),
                          ],
                        )
                      : Image.asset(
                          Get.find<ThemeController>().isDarkMode
                              ? userAccountDataListModel[index].iconDK
                              : userAccountDataListModel[index].icon,
                          height: Responsive.isDesktop(context) ? 100.0 : 70.0,
                        ),
                  // Icon(
                  //   Icons.access_alarm_outlined,
                  //   color: greenBg,
                  //   size: 50.0,
                  // ),
                  SizedBox(height: Responsive.isDesktop(context) ? 32 : 22),
                  Text(
                    userAccountDataListModel[index].title,
                    maxLines: 1,
                    style: TextStyle(
                      height: 1.5,

                      fontWeight: FontWeight.bold,
                      fontSize: Responsive.isDesktop(context) ? 24.0 : 22.0,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      // color: appTextColor,
                    ),
                    textAlign: Responsive.isDesktop(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  ),
                  SizedBox(height: Responsive.isDesktop(context) ? 16 : 14),
                  Text(
                    userAccountDataListModel[index].subtitle,
                    style: TextStyle(
                      height: 1.8,
                      fontWeight: FontWeight.w500,
                      fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      // color: greenBorder,
                    ),
                    textAlign: Responsive.isDesktop(context)
                        ? TextAlign.center
                        : TextAlign.left,
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
