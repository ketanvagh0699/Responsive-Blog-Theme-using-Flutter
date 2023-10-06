import 'package:flutter/material.dart';
import 'package:news/responsive.dart';

import '../../../../constants.dart';

class FooterBottomLicence extends StatelessWidget {
  const FooterBottomLicence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign:
          Responsive.isDesktop(context) ? TextAlign.start : TextAlign.center,
      maxLines: 2,
      text: new TextSpan(
        text: 'Copyright © Propertise | Designed by ',
        style: TextStyle(
          color: white,
          fontWeight: FontWeight.normal,
          height: 1.5,
          fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
          fontFamily: "Roboto",
        ),
        children: <TextSpan>[
          new TextSpan(
            text: 'Propertise Templates',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
              fontFamily: "Roboto",
            ),
          ),
          new TextSpan(
            text: ' - Powered by ',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              fontFamily: "Roboto",
              fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
              height: 1.5,
            ),
          ),
          new TextSpan(
            text: 'Webflow',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
