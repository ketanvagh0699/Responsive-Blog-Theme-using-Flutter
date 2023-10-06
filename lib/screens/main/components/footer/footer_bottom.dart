import 'package:flutter/material.dart';
import 'package:news/responsive.dart';

import '../../../../constants.dart';
import 'footer_bottom_licence.dart';
import 'footer_bottom_social_buttons.dart';

class FooterBottom extends StatelessWidget {
  const FooterBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      constraints: BoxConstraints(maxWidth: kMaxWidth),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: whiteColor,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            child: SizedBox(
              // height: 50,
              child: Responsive.isDesktop(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        FooterBottomLicence(),
                        FooterBottomSocialButtons(),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        FooterBottomLicence(),
                        FooterBottomSocialButtons(),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
