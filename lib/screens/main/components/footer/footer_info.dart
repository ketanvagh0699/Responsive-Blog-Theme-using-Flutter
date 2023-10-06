import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/responsive.dart';
import '../../../../constants.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      // constraints: BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: !Responsive.isDesktop(context)
        //     ? CrossAxisAlignment.center
        //     : CrossAxisAlignment.start,
        children: [
          // SvgPicture.asset(
          //   "assets/icons/name_logo.svg",
          //   // "assets/icons/logo.png",
          //   height: Responsive.isDesktop(context) ? 65.0 : 50.0,
          //   // width: 65.0,
          //   // color: whiteColor,
          //   color: whiteColor,
          // ),
          Image.asset(
            "assets/icons/name_logo_w.png",
            // "assets/icons/logo.png",
            height: 50.0,
            // width: 65.0,
            // color: whiteColor,
            // color: GetStorage().read(AppSession.isThemeMode) == 2
            //     ? whiteColor
            //     : appPrimaryColor,
          ),
          SizedBox(height: (Responsive.isDesktop(context) ? 24 : 10) + 8),
          Text(
            '+1 (885) 589 69 85',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(height: 16 + 8),
          Text(
            'info@propertise.com',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
          ),
          SizedBox(height: 16 + 8),
          Text(
            'Ms. Alice Smith Apartment 1C 213 Derrick Street Boston, MA 02130 UAE',
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.normal,
              height: 1.5,
              fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
              fontFamily: "Roboto",
            ),
            // textAlign: !Responsive.isDesktop(context)
            //     ? TextAlign.center
            //     : TextAlign.left,
          ),
          if (Responsive.isDesktop(context)) SizedBox(height: 16 + 8),
        ],
      ),
    );
  }
}
