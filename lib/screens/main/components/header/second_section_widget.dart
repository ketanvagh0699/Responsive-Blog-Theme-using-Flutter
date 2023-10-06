import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/theme_controller.dart';
import 'package:news/responsive.dart';
import 'package:news/screens/main/components/buttons_widget.dart';

import '../../../../constants.dart';

class SecondSectionWidget extends StatelessWidget {
  const SecondSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            "A robust feature set",
            style: TextStyle(
              color: Theme.of(context).textTheme.displayLarge!.color,
              // color: appTextColor,
              fontSize: Responsive.isDesktop(context) ? 45.0 : 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper \ntortor nec habitasse vestibulum id amet at sit.',
            maxLines: 3,
            textAlign: Responsive.isDesktop(context)
                ? TextAlign.center
                : TextAlign.left,
            style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.displayLarge!.color,
              // color: appTextColor,
              height: 1.6,
              // letterSpacing: 0.5,
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
              // childAspectRatio: Responsive.isDesktop(context) ? 8 / 9 : 8 / 6.8,
              // childAspectRatio:
              //     (size.height / (Responsive.isDesktop(context) ? 900 : 600)),
              // childAspectRatio: 285 / (340),
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              mainAxisExtent: Responsive.isDesktop(context) ? 360.0 : 320.0,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return ItemCardWidget(
                item: cards[index],
              );
            },
          ),
          SizedBox(
            height: 40.0,
          ),
          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonsWidget(),
                  ],
                )
              : ButtonsWidget(),
        ],
      ),
    );
  }
}

class ItemCardWidget extends StatefulWidget {
  final HowItWorkCardModel item;

  const ItemCardWidget({Key? key, required this.item}) : super(key: key);

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  bool isHover = false;

  bool isAnimated = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        isAnimated = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (val) => setState(() => isHover = true),
      onExit: (val) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        // padding: const EdgeInsets.all(32),
        padding: const EdgeInsets.all(25),
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
              color: isHover
                  ? textPrimary.withOpacity(0.15)
                  : textPrimary.withOpacity(0),
              offset: const Offset(0, 6),
              blurRadius: 10,
            ),
          ],
        ),
        child: AnimatedCrossFade(
          crossFadeState:
              isAnimated ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 575),
          reverseDuration: Duration(milliseconds: 375),
          alignment: Alignment.center,
          firstCurve: Curves.easeOut,
          secondCurve: Curves.easeOut,
          firstChild: Container(
            height: 179.0,
            // height: 169.0,
            // width: 210.0,
            padding: const EdgeInsets.all(32),
          ),
          secondChild: Column(
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
                    ? widget.item.iconDK.toString()
                    : widget.item.icon.toString(),
              ),

              // Icon(
              //   widget.item.icon,
              //   color: greenBg,
              //   size: 50.0,
              // ),
              SizedBox(height: Responsive.isDesktop(context) ? 32 : 25),
              Text(
                widget.item.title,
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
                widget.item.subtitle,
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
        ),
      ),
    );
  }
}

class HowItWorkCardModel {
  HowItWorkCardModel(
      this.id, this.icon, this.iconDK, this.title, this.subtitle);

  final int id;
  final String icon;
  final String iconDK;
  final String title;
  final String subtitle;
}

List<HowItWorkCardModel> cards = [
  HowItWorkCardModel(
    0,
    'assets/icons/graph_icon.svg',
    'assets/icons/graph_icon_dk.svg',
    'Realtime Analytics',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/flag_icon.svg',
    'assets/icons/flag_icon_dk.svg',
    'User Journey',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/report_icon.svg',
    'assets/icons/report_icon_dk.svg',
    'Automated Reports',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/data_icon.svg',
    'assets/icons/data_icon_dk.svg',
    'AI Data Predictions',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/testing_icon.svg',
    'assets/icons/testing_icon_dk.svg',
    'A/B Testing',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  HowItWorkCardModel(
    0,
    'assets/icons/setting_icon.svg',
    'assets/icons/setting_icon_dk.svg',
    'Integrations',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Netus eter eu vel maecenas integer gravida pulvinar felis. Tristique vitae nisllorem.',
  ),
  // HowItWorkCardModel(
  //   3,
  //   'assets/icons/graph_icon.svg',
  //   'assets/icons/graph_icon_dk.svg',
  //   'Trusted Platform',
  //   'People trust us since we opened the company in USA.',
  // ),
];
