import 'package:flutter/material.dart';
import 'package:news/responsive.dart';

import '../../../../constants.dart';

class FooterBottomSocialButtons extends StatelessWidget {
  const FooterBottomSocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: new TextSpan(
        text: 'Terms & Conditions | Privacy Policy',
        style: TextStyle(
          color: white,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.underline,
          height: 1.5,
          fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
        ),
        children: <TextSpan>[
          // new TextSpan(
          //   text: 'Propertise Templates',
          //   style: TextStyle(
          //     color: white,
          //     fontWeight: FontWeight.w500,
          //     decoration: TextDecoration.underline,
          //     height: 1.5,
          //     fontSize: 16.0,
          //     fontFamily: "Roboto",
          //   ),
          // ),
          // new TextSpan(
          //   text: ' - Powered by ',
          //   style: TextStyle(
          //     color: white,
          //     fontWeight: FontWeight.w500,
          //     fontFamily: "Roboto",
          //     fontSize: 16.0,
          //     height: 1.5,
          //   ),
          // ),
          // new TextSpan(
          //   text: 'Webflow',
          //   style: TextStyle(
          //     color: white,
          //     fontWeight: FontWeight.w500,
          //     decoration: TextDecoration.underline,
          //     height: 1.5,
          //     fontSize: 16.0,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class SocialIconButtonWidget extends StatelessWidget {
  const SocialIconButtonWidget(
      {Key? key, required this.icons, required this.onTapFun})
      : super(key: key);

  final IconData icons;
  final void Function() onTapFun;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: whiteColor.withOpacity(.2),
      shape: RoundedRectangleBorder(
        // side: BorderSide(color: whiteColor),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: InkWell(
        onTap: onTapFun,
        child: SizedBox(
          height: 25,
          width: 25,
          child: Center(
            child: Icon(
              icons,
              size: 15,
              color: whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
