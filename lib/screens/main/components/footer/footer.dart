import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../controllers/theme_controller.dart';
import '../../../../responsive.dart';
import 'footer_bottom.dart';
import 'footer_info.dart';
import 'footer_item_widget.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Get.find<ThemeController>().isDarkMode
                  ? greenBorder.withOpacity(.75)
                  : greenBorder.withOpacity(.35),
              BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding + 30,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Responsive(
                mobile: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterInfo(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FooterPages(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FooterSocialButton(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                tablet: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FooterInfo(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FooterPages(),
                    SizedBox(
                      height: 10.0,
                    ),
                    FooterSocialButton(),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
                desktop: Row(
                  children: [
                    Expanded(child: FooterInfo()),
                    Expanded(child: FooterPages()),
                    Expanded(child: FooterSocialButton()),
                  ],
                ),
              ),
            ),
            FooterBottom(),
          ],
        ),
      ),
    );
  }
}
