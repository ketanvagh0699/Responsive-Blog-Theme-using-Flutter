import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';
import '../../../../responsive.dart';
import 'footer_bottom_social_buttons.dart';

class FooterPages extends StatelessWidget {
  const FooterPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: !Responsive.isDesktop(context)
        //     ? CrossAxisAlignment.center
        //     : CrossAxisAlignment.start,
        children: [
          Text(
            "Utility Pages",
            style: TextStyle(
              color: whiteColor,
              fontSize: Responsive.isDesktop(context) ? 30.0 : 24.0,
              letterSpacing: 0.9,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: (Responsive.isDesktop(context) ? 24 : 10) + 8),
          Text(
            "Start Here",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Style Guide",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "404 Not Found",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Password Protected",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Licences",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          if (Responsive.isDesktop(context))
            SizedBox(
              height: 10.0,
            ),
        ],
      ),
    );
  }
}

class FooterSocialButton extends StatelessWidget {
  const FooterSocialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: !Responsive.isDesktop(context)
        //     ? CrossAxisAlignment.center
        //     : CrossAxisAlignment.start,
        children: [
          Text(
            "Follow Us",
            style: TextStyle(
              color: whiteColor,
              fontSize: Responsive.isDesktop(context) ? 30.0 : 24.0,
              letterSpacing: 0.9,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: (Responsive.isDesktop(context) ? 24 : 10) + 8),
          SocialItemButtonWidget(
            icons: FontAwesomeIcons.facebookF,
            name: "Facebook",
            onTapFun: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialItemButtonWidget(
            icons: FontAwesomeIcons.instagram,
            name: "Instagram",
            onTapFun: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialItemButtonWidget(
            icons: FontAwesomeIcons.twitter,
            name: "Twitter",
            onTapFun: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialItemButtonWidget(
            icons: FontAwesomeIcons.linkedinIn,
            name: "LinkedIn",
            onTapFun: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialItemButtonWidget(
            icons: FontAwesomeIcons.whatsapp,
            name: "whatsapp",
            onTapFun: () {},
          ),
        ],
      ),
    );
  }
}

class SocialItemButtonWidget extends StatelessWidget {
  final IconData icons;
  final String name;
  final void Function() onTapFun;
  const SocialItemButtonWidget({
    Key? key,
    required this.icons,
    required this.name,
    required this.onTapFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: !Responsive.isDesktop(context)
      //     ? MainAxisAlignment.center
      //     : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SocialIconButtonWidget(
          icons: icons,
          onTapFun: onTapFun,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          name,
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.normal,
            height: 1.5,
            fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
            fontFamily: "Roboto",
          ),
        )
      ],
    );
  }
}
