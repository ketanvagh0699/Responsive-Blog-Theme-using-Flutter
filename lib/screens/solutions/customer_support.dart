import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';

import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import '../main/components/header/second_section_widget.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({Key? key}) : super(key: key);

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  List<HowItWorkCardModel> dOneList = [
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
  ];
  List<HowItWorkCardModel> dSecondList = [
    HowItWorkCardModel(
      0,
      "",
      '',
      'How many support tickets can I raise?           ',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
    HowItWorkCardModel(
      0,
      "",
      '',
      'How long does it take to resolve a support ticket?',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Responsive.isDesktop(context) ? 30.0 : 5.0,
        ),
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Get.find<ThemeController>().isDarkMode
                    ? "assets/images/securityTabs/cu1dk.png"
                    : "assets/images/securityTabs/cu1.png",
                height: Responsive.isDesktop(context) ? 75.0 : 50.0,
              ),
              SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
              Text(
                'User Guide',
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
                "You will have instant access to the Propertise user guide, which will provide you with all the details and step-by-step instructions on how to fully utilize the solutions and features you are using, while assisting you in clarifying your questions and requirements."
                "\n\nThe user guide is frequently updated to keep you informed on all current and future updates and advancements.",
                style: TextStyle(
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
                textAlign: Responsive.isDesktop(context)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: .6,
                height: 60.0,
              ),
              Image.asset(
                Get.find<ThemeController>().isDarkMode
                    ? "assets/images/securityTabs/cu2dk.png"
                    : "assets/images/securityTabs/cu2.png",
                height: Responsive.isDesktop(context) ? 75.0 : 50.0,
              ),
              SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
              Text(
                'Help & Support',
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
                "You can raise a request any time at your dedicated help and support counter available in your account. You will be able to track and follow up on the status of your request and view the responses of our support team."
                "\n\nOur team will be happy to assist you, Monday to Friday from 8AM – 6PM GMT.",
                style: TextStyle(
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
                textAlign: Responsive.isDesktop(context)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              Divider(
                color: Theme.of(context).dividerColor,
                thickness: .6,
                height: 60.0,
              ),
              Image.asset(
                Get.find<ThemeController>().isDarkMode
                    ? "assets/images/securityTabs/cu3dk.png"
                    : "assets/images/securityTabs/cu3.png",
                height: Responsive.isDesktop(context) ? 75.0 : 50.0,
              ),
              SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
              Text(
                'User Guide',
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
                "You will have instant access to the Propertise user guide, which will provide you with all the details and step-by-step instructions on how to fully utilize the solutions and features you are using, while assisting you in clarifying your questions and requirements."
                "\n\nThe user guide is frequently updated to keep you informed on all current and future updates and advancements.",
                style: TextStyle(
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
                textAlign: Responsive.isDesktop(context)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
          desktop: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        Get.find<ThemeController>().isDarkMode
                            ? "assets/images/securityTabs/cu1dk.png"
                            : "assets/images/securityTabs/cu1.png",
                        height: Responsive.isDesktop(context) ? 75.0 : 50.0,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
                      Text(
                        'User Guide',
                        maxLines: 1,
                        style: TextStyle(
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ? 24.0 : 22.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 16 : 14),
                      Text(
                        "You will have instant access to the Propertise user guide, which will provide you with all the details and step-by-step instructions on how to fully utilize the solutions and features you are using, while assisting you in clarifying your questions and requirements."
                        "\n\nThe user guide is frequently updated to keep you informed on all current and future updates and advancements.",
                        style: TextStyle(
                          height: 1.8,
                          fontWeight: FontWeight.normal,
                          fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: greenBorder,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Theme.of(context).dividerColor,
                  thickness: .6,
                  width: 35,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        Get.find<ThemeController>().isDarkMode
                            ? "assets/images/securityTabs/cu2dk.png"
                            : "assets/images/securityTabs/cu2.png",
                        height: Responsive.isDesktop(context) ? 75.0 : 50.0,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
                      Text(
                        'Help & Support',
                        maxLines: 1,
                        style: TextStyle(
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ? 24.0 : 22.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 16 : 14),
                      Text(
                        "You can raise a request any time at your dedicated help and support counter available in your account. You will be able to track and follow up on the status of your request and view the responses of our support team."
                        "\n\nOur team will be happy to assist you, Monday to Friday from 8AM – 6PM GMT.",
                        style: TextStyle(
                          height: 1.8,
                          fontWeight: FontWeight.normal,
                          fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: greenBorder,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      )
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Theme.of(context).dividerColor,
                  thickness: .6,
                  width: 35,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        Get.find<ThemeController>().isDarkMode
                            ? "assets/images/securityTabs/cu3dk.png"
                            : "assets/images/securityTabs/cu3.png",
                        height: Responsive.isDesktop(context) ? 75.0 : 50.0,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 26 : 22),
                      Text(
                        'User Guide',
                        maxLines: 1,
                        style: TextStyle(
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ? 24.0 : 22.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      ),
                      SizedBox(height: Responsive.isDesktop(context) ? 16 : 14),
                      Text(
                        "You will have instant access to the Propertise user guide, which will provide you with all the details and step-by-step instructions on how to fully utilize the solutions and features you are using, while assisting you in clarifying your questions and requirements."
                        "\n\nThe user guide is frequently updated to keep you informed on all current and future updates and advancements.",
                        style: TextStyle(
                          height: 1.8,
                          fontWeight: FontWeight.normal,
                          fontSize: Responsive.isDesktop(context) ? 17.5 : 15.0,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: greenBorder,
                        ),
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
        Text(
          "Common Questions",
          style: TextStyle(
            color: Theme.of(context).textTheme.displayLarge!.color,
            // color: appTextColor,
            fontSize: Responsive.isDesktop(context) ? 40.0 : 28.0,
            fontWeight: FontWeight.w700,
          ),
          textAlign:
              Responsive.isDesktop(context) ? TextAlign.center : TextAlign.left,
        ),
        SizedBox(
          height: 30.0,
        ),
        Responsive(
          mobile: Column(
            children: [
              ...dOneList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(
                          right: 0.0, bottom: 15.0, top: 15.0),
                      child: ExpansionTile(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        tilePadding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 25.0,
                        ),
                        textColor: appTextColor,
                        collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: appPrimaryColor,
                            width: 1.5,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: appPrimaryColor,
                            width: 1.5,
                          ),
                        ),
                        title: Text(
                          e.title,
                          style: TextStyle(
                            fontSize:
                                Responsive.isDesktop(context) ? 24.0 : 19.0,
                            fontWeight: FontWeight.w700,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        trailing: SizedBox(),
                        childrenPadding:
                            EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        children: <Widget>[
                          Text(
                            e.subtitle,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize:
                                  Responsive.isDesktop(context) ? 20.0 : 17.0,
                              height: 1.3,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                            ),
                          ),
                          // ListTile(
                          //   contentPadding: EdgeInsets.zero,
                          //   title: Text(
                          //     e.subtitle,
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.normal,
                          //       fontSize: Responsive.isDesktop(context)
                          //           ? 20.0
                          //           : 18.0,
                          //       height: 1.3,
                          //       color: Theme.of(context)
                          //           .textTheme
                          //           .displayLarge!
                          //           .color,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  )
                  .toList(),
              ...dSecondList
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, bottom: 15.0, top: 15.0),
                      child: ExpansionTile(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        tilePadding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 25.0,
                        ),
                        textColor: appTextColor,
                        collapsedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: appPrimaryColor,
                            width: 1.5,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: appPrimaryColor,
                            width: 1.5,
                          ),
                        ),
                        title: Text(
                          e.title,
                          style: TextStyle(
                            fontSize:
                                Responsive.isDesktop(context) ? 24.0 : 19.0,
                            fontWeight: FontWeight.w700,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        trailing: SizedBox(),
                        childrenPadding:
                            EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                        children: <Widget>[
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              e.subtitle,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    Responsive.isDesktop(context) ? 20.0 : 17.0,
                                height: 1.3,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
          desktop: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: dOneList
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(
                              right: 15.0, bottom: 15.0, top: 15.0),
                          child: ExpansionTile(
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            tilePadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 25.0,
                            ),
                            textColor: appTextColor,
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: appPrimaryColor,
                                width: 1.5,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: appPrimaryColor,
                                width: 1.5,
                              ),
                            ),
                            title: Text(
                              e.title,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 24.0 : 20.0,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                            trailing: SizedBox(),
                            childrenPadding: EdgeInsets.all(20.0),
                            children: <Widget>[
                              Text(
                                e.subtitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: Responsive.isDesktop(context)
                                      ? 20.0
                                      : 18.0,
                                  height: 1.3,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                ),
                              ),
                              // ListTile(
                              //   contentPadding: EdgeInsets.zero,
                              //   title: Text(
                              //     e.subtitle,
                              //     style: TextStyle(
                              //       fontWeight: FontWeight.normal,
                              //       fontSize: Responsive.isDesktop(context)
                              //           ? 20.0
                              //           : 18.0,
                              //       height: 1.3,
                              //       color: Theme.of(context)
                              //           .textTheme
                              //           .displayLarge!
                              //           .color,
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Expanded(
                child: Column(
                  children: dSecondList
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, bottom: 15.0, top: 15.0),
                          child: ExpansionTile(
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            tilePadding: EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 25.0,
                            ),
                            textColor: appTextColor,
                            collapsedShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: appPrimaryColor,
                                width: 1.5,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: appPrimaryColor,
                                width: 1.5,
                              ),
                            ),
                            title: Text(
                              e.title,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 24.0 : 20.0,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                            trailing: SizedBox(),
                            childrenPadding: EdgeInsets.all(20.0),
                            children: <Widget>[
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  e.subtitle,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: Responsive.isDesktop(context)
                                        ? 20.0
                                        : 18.0,
                                    height: 1.3,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
