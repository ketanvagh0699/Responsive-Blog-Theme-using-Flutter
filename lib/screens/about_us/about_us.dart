import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:news/screens/main/main_home_screen.dart';

import '../../constants.dart';
import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import '../main/components/app_button_widget.dart';
import '../main/components/buttons_widget.dart';
import '../main/components/header/second_section_widget.dart';

class WhyPropertiseUs extends StatefulWidget {
  const WhyPropertiseUs({Key? key}) : super(key: key);

  @override
  State<WhyPropertiseUs> createState() => _WhyPropertiseUsState();
}

class _WhyPropertiseUsState extends State<WhyPropertiseUs> {
  bool isHover = false;
  bool isDK = false;

  @override
  Widget build(BuildContext context) {
    return MainHomeScreen(
      // firstSection: Text("Hello world"),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            padding: EdgeInsets.all(kDefaultPadding),
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: kMaxWidth - 480.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Our mission is to help your company grow',
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 59.0 : 33.0,
                      fontWeight: FontWeight.w800,
                      // color: appPrimaryDark,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      height: 1.1,
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    // textAlign: Responsive.isDesktop(context)
                    //     ? TextAlign.left
                    //     : TextAlign.center,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      height: 1.7,
                      // letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding +
                        (Responsive.isDesktop(context) ? 25 : 5.0),
                  ),
                  if (Responsive.isMobile(context))
                    AppButtonWidget(
                      text: "Open Positions",
                      textColor: whiteColor,
                      onPressed: () {},
                      backgroundColor: appPrimaryColor,
                      borderSideColor: appPrimaryColor,
                      foregroundColor: appPrimaryColor,
                      width: Get.width,
                    ),
                  if (Responsive.isMobile(context))
                    SizedBox(
                      height: 15.0,
                    ),
                  if (Responsive.isMobile(context))
                    AppButtonWidget(
                      text: "Our Story",
                      textColor: appPrimaryColor,
                      onPressed: () {},
                      borderSideColor: appPrimaryColor,
                      foregroundColor: appPrimaryColor,
                      width: Get.width,
                    ),
                  if (!Responsive.isMobile(context))
                    Row(
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        AppButtonWidget(
                          text: "Open Positions",
                          textColor: whiteColor,
                          onPressed: () {},
                          backgroundColor: appPrimaryColor,
                          borderSideColor: appPrimaryColor,
                          foregroundColor: appPrimaryColor,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 15.0 : 11.0,
                        ),
                        AppButtonWidget(
                          text: "Our Story",
                          textColor: appPrimaryColor,
                          onPressed: () {},
                          borderSideColor: appPrimaryColor,
                          foregroundColor: appPrimaryColor,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? kDefaultPadding : 0,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            padding: EdgeInsets.all(kDefaultPadding),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://assets.website-files.com/5fbd60e9c0e04c6e2ff0c2e0/5fce809f5a101a1c14b382f1_image-about-hero-software-ui-kit-p-2000.jpeg',
              ),
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? kDefaultPadding + 30 : 0,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            padding: EdgeInsets.all(kDefaultPadding),
            child: Responsive(
              mobile: Column(
                children: [
                  Text(
                    'Our mission is to help your company grow',
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 51.0 : 30.0,
                      fontWeight: FontWeight.w800,
                      // color: appPrimaryDark,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      height: 1.1,
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                    maxLines: 3,
                    textAlign: TextAlign.left,
                    // textAlign: Responsive.isDesktop(context)
                    //     ? TextAlign.left
                    //     : TextAlign.center,
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      height: 1.7,
                      // letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding +
                        (Responsive.isDesktop(context) ? 25 : 5.0),
                  ),
                  // if (Responsive.isMobile(context))
                  AppButtonWidget(
                    text: "Open Positions",
                    textColor: whiteColor,
                    onPressed: () {},
                    backgroundColor: appPrimaryColor,
                    borderSideColor: appPrimaryColor,
                    foregroundColor: appPrimaryColor,
                    width: Get.width,
                  ),
                  SizedBox(
                    height: kDefaultPadding + 10.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisExtent: 100.0,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: storyNumber.length,
                      itemBuilder: (context, index) {
                        return Container(
                            decoration: BoxDecoration(
                              color: index % 2 == 0
                                  ? appPrimaryColor
                                  : Theme.of(context).buttonColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  storyNumber[index].title.toString(),
                                  style: TextStyle(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 50.0
                                        : 35.0,
                                    fontWeight: FontWeight.w600,
                                    // color: appPrimaryDark,
                                    color: index % 2 == 0
                                        ? whiteColor
                                        : Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                    height: 1.1,
                                  ),
                                ),
                                Text(
                                  storyNumber[index].subTitle.toString(),
                                  style: TextStyle(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 18.0
                                        : 16.5,
                                    fontWeight: FontWeight.w500,
                                    color: index % 2 == 0
                                        ? whiteColor
                                        : Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .color,
                                    height: 1.7,
                                    // letterSpacing: 0.5,
                                  ),
                                )
                              ],
                            ));
                      },
                    ),
                  ),
                ],
              ),
              desktop: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Our story in numbers',
                          style: TextStyle(
                            fontSize:
                                Responsive.isDesktop(context) ? 51.0 : 30.0,
                            fontWeight: FontWeight.w800,
                            // color: appPrimaryDark,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            height: 1.1,
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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          // textAlign: Responsive.isDesktop(context)
                          //     ? TextAlign.left
                          //     : TextAlign.center,
                          style: TextStyle(
                            fontSize:
                                Responsive.isDesktop(context) ? 18.0 : 16.5,
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            height: 1.7,
                            // letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(
                          height: kDefaultPadding +
                              (Responsive.isDesktop(context) ? 25 : 5.0),
                        ),
                        // if (Responsive.isMobile(context))
                        AppButtonWidget(
                          text: "Open Positions",
                          textColor: whiteColor,
                          onPressed: () {},
                          backgroundColor: appPrimaryColor,
                          borderSideColor: appPrimaryColor,
                          foregroundColor: appPrimaryColor,
                          width: 250.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: storyNumber.length,
                        itemBuilder: (context, index) {
                          return Container(
                              decoration: BoxDecoration(
                                color: index % 3 == 0
                                    ? appPrimaryColor
                                    : Theme.of(context).buttonColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    storyNumber[index].title.toString(),
                                    style: TextStyle(
                                      fontSize: Responsive.isDesktop(context)
                                          ? 50.0
                                          : 30.0,
                                      fontWeight: FontWeight.w500,
                                      // color: appPrimaryDark,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color,
                                      height: 1.1,
                                    ),
                                  ),
                                  Text(
                                    storyNumber[index].subTitle.toString(),
                                    style: TextStyle(
                                      fontSize: Responsive.isDesktop(context)
                                          ? 18.0
                                          : 16.5,
                                      fontWeight: FontWeight.w500,
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .color,
                                      height: 1.7,
                                      // letterSpacing: 0.5,
                                    ),
                                  )
                                ],
                              ));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 130.0 : 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              crossAxisAlignment: Responsive.isDesktop(context)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: kMaxWidth - 700.0),
                  child: Column(
                    children: [
                      Text(
                        "The values behind our company",
                        style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
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
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                        maxLines: 3,
                        textAlign: Responsive.isDesktop(context)
                            ? TextAlign.center
                            : TextAlign.left,
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
                          fontWeight: FontWeight.w500,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          // color: appTextColor,
                          height: 1.6,
                          // letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding + 20,
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
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    mainAxisExtent:
                        Responsive.isDesktop(context) ? 300.0 : 270.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cardCompany.length,
                  itemBuilder: (context, index) {
                    return ItemCardCompanyWidget(
                      item: cardCompany[index],
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Divider(
              color: Theme.of(context).dividerColor,
              height: Responsive.isDesktop(context) ? 130.0 : 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              crossAxisAlignment: Responsive.isDesktop(context)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Responsive(
                  mobile: Column(
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: kMaxWidth - 750.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The amazing team behind Software",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: appTextColor,
                                fontSize:
                                    Responsive.isDesktop(context) ? 43.0 : 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                              maxLines: 3,
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 17.0 : 15.0,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: appTextColor,
                                height: 1.6,
                                // letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      AppButtonWidget(
                        text: "Join our team",
                        textColor: whiteColor,
                        onPressed: () {},
                        backgroundColor: appPrimaryColor,
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
                        constraints:
                            BoxConstraints(maxWidth: kMaxWidth - 750.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The amazing team behind Software",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: appTextColor,
                                fontSize:
                                    Responsive.isDesktop(context) ? 43.0 : 28.0,
                                fontWeight: FontWeight.w800,
                              ),
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper tortor nec habitasse vestibulum id amet at sit.',
                              maxLines: 3,
                              // textAlign: Responsive.isDesktop(context)
                              //     ? TextAlign.center
                              //     : TextAlign.left,
                              style: TextStyle(
                                fontSize:
                                    Responsive.isDesktop(context) ? 17.0 : 15.0,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                                // color: appTextColor,
                                height: 1.6,
                                // letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppButtonWidget(
                        text: "Join our team",
                        textColor: whiteColor,
                        onPressed: () {},
                        backgroundColor: appPrimaryColor,
                        borderSideColor: appPrimaryColor,
                        foregroundColor: appPrimaryColor,
                        width: Get.width * .15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding + 20,
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
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    mainAxisExtent:
                        Responsive.isDesktop(context) ? 350.0 : 300.0,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cardCompany.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(kDefaultPadding),
                      decoration: BoxDecoration(
                        // color: isHover ? white : white.withOpacity(0),
                        /// light mode
                        // color: isHover ? white : lightGreyColor.withOpacity(.5),
                        /// dark mode
                        // color: isHover ? white : dCardColor,
                        // color: dCardColor,
                        color: Theme.of(context).buttonColor,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: textPrimary.withOpacity(0),
                            offset: const Offset(0, 6),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                              'https://assets.website-files.com/5fbd60e9c0e04cb42bf0c2e7/5fc8274e56f44fcd53af5d8a_image-team-6-software-ui-kit.jpg',
                              height:
                                  Responsive.isDesktop(context) ? 130.0 : 104.0,
                              width:
                                  Responsive.isDesktop(context) ? 130.0 : 104.0,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "John Carter",
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              fontSize:
                                  Responsive.isDesktop(context) ? 27.0 : 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "CEO and Co-founder",
                            style: TextStyle(
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                              fontSize:
                                  Responsive.isDesktop(context) ? 19.0 : 17.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            constraints: BoxConstraints(maxWidth: 250.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SocialButtonIconWidget(
                                  isHover: isDK,
                                  icon: FontAwesomeIcons.facebookF,
                                ),
                                SocialButtonIconWidget(
                                  isHover: isDK,
                                  icon: FontAwesomeIcons.twitter,
                                ),
                                SocialButtonIconWidget(
                                  isHover: isDK,
                                  icon: FontAwesomeIcons.instagram,
                                ),
                                SocialButtonIconWidget(
                                  isHover: isDK,
                                  icon: FontAwesomeIcons.linkedinIn,
                                ),
                                // MouseRegion(
                                //   onEnter: (val) =>
                                //       setState(() => isHover = true),
                                //   onExit: (val) =>
                                //       setState(() => isHover = false),
                                //   child: AnimatedContainer(
                                //     duration: const Duration(milliseconds: 240),
                                //     child: Container(
                                //       decoration: BoxDecoration(
                                //         color: isHover
                                //             ? appPrimaryColor
                                //             : lightGreyColor,
                                //         borderRadius: BorderRadius.circular(
                                //           5.0,
                                //         ),
                                //         boxShadow: [
                                //           BoxShadow(
                                //             color: isHover
                                //                 ? textPrimary.withOpacity(0.15)
                                //                 : textPrimary.withOpacity(0),
                                //             offset: const Offset(0, 6),
                                //             blurRadius: 10,
                                //           ),
                                //         ],
                                //       ),
                                //       padding: EdgeInsets.all(6.0),
                                //       child: Icon(
                                //         FontAwesomeIcons.instagram,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
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
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
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
        ],
      ),
    );
  }
}

class SocialButtonIconWidget extends StatefulWidget {
  final bool isHover;
  final IconData? icon;

  SocialButtonIconWidget({Key? key, this.icon, required this.isHover})
      : super(key: key);

  @override
  State<SocialButtonIconWidget> createState() => _SocialButtonIconWidgetState();
}

class _SocialButtonIconWidgetState extends State<SocialButtonIconWidget> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // onEnter: (val) => widget.isHover = true,
      // onExit: (val) => widget.isHover = false,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        child: Container(
          decoration: BoxDecoration(
            color: widget.isHover ? appPrimaryColor : lightGreyColor,
            borderRadius: BorderRadius.circular(
              5.0,
            ),
            boxShadow: [
              BoxShadow(
                color: widget.isHover
                    ? textPrimary.withOpacity(0.15)
                    : textPrimary.withOpacity(0),
                offset: const Offset(0, 6),
                blurRadius: 10,
              ),
            ],
          ),
          padding: EdgeInsets.all(8.0),
          child: Icon(
            widget.icon,
            size: 21.0,
          ),
        ),
      ),
    );
  }
}

class ItemCardCompanyWidget extends StatelessWidget {
  final HowItWorkCardModel item;

  const ItemCardCompanyWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        // color: isHover ? white : white.withOpacity(0),
        /// light mode
        // color: isHover ? white : lightGreyColor.withOpacity(.5),
        /// dark mode
        // color: isHover ? white : dCardColor,
        // color: dCardColor,
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: textPrimary.withOpacity(0),
            offset: const Offset(0, 6),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: Responsive.isDesktop(context)
        //     ? MainAxisAlignment.center
        //     : MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            Get.find<ThemeController>().isDarkMode
                ? item.iconDK.toString()
                : item.icon.toString(),
            height: 50.0,
          ),
          SizedBox(height: Responsive.isDesktop(context) ? 25 : 23),
          Text(
            item.title,
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
          const SizedBox(height: 16),
          Text(
            item.subtitle,
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
  }
}

List<SimpleDataModel> storyNumber = [
  SimpleDataModel(
    title: '25B',
    subTitle: 'Tracked Events',
  ),
  SimpleDataModel(
    title: '8 years',
    subTitle: 'Founded 8 years ago',
  ),
  SimpleDataModel(
    title: '40K',
    subTitle: 'Active Customers',
  ),
  SimpleDataModel(
    title: '100M',
    subTitle: 'Tracked Users',
  ),
];

class SimpleDataModel {
  String? title;
  String? subTitle;
  SimpleDataModel({this.title, this.subTitle});
}

// cards
List<HowItWorkCardModel> cardCompany = [
  HowItWorkCardModel(
    0,
    'assets/icons/invention.svg',
    'assets/icons/invention_dk.svg',
    'Innovation',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/hardwork.svg',
    'assets/icons/hardwork_dk.svg',
    'Hard work',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/flag_icon.svg',
    'assets/icons/flag_icon_dk.svg',
    'Passion',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/accountability.svg',
    'assets/icons/accountability_dk.svg',
    'Accountability',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/growth.svg',
    'assets/icons/growth_dk.svg',
    'Growth',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/teamwork.svg',
    'assets/icons/teamwork_dk.svg',
    'Team Work',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum cursus urna pellentesque ornare.',
  ),
];
