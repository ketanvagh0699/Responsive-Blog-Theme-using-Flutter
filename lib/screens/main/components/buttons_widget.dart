import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import 'app_button_widget.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Column(
        children: [
          AppButtonWidget(
            text: "Get Demo",
            textColor: whiteColor,
            onPressed: () {},
            backgroundColor: appPrimaryColor,
            borderSideColor: appPrimaryColor,
            foregroundColor: appPrimaryColor,
            width: Get.width,
          ),
          SizedBox(
            height: 15.0,
          ),
          AppButtonWidget(
            text: "Sign Up",
            textColor: appPrimaryColor,
            onPressed: () {},
            borderSideColor: appPrimaryColor,
            foregroundColor: appPrimaryColor,
            width: Get.width,
          ),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.start
            : MainAxisAlignment.center,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: appPrimaryColor,
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 50.0 : 32.0,
                vertical: Responsive.isDesktop(context) ? 25.0 : 20.0,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              disabledForegroundColor: primaryWhite.withOpacity(0.38),
              backgroundColor: appPrimaryColor,
              // fixedSize: Size(
              //   width ?? MediaQuery.of(context).size.width,
              //   height ?? 48,
              // ),
              alignment: Alignment.center,
              // textStyle: AppTextStyle.normalSemiBold16
              //     .copyWith(color: titleColor ?? appPrimaryDark)),
            ),
            child: Text(
              'Get Demo',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: white,
                fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
                height: 1.5,
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: Responsive.isDesktop(context) ? 15.0 : 11.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: primaryWhite,
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 50.0 : 32.0,
                vertical: Responsive.isDesktop(context) ? 25.0 : 20.0,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appPrimaryColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              disabledForegroundColor: primaryWhite.withOpacity(0.38),
              // backgroundColor: buttonColor ?? whiteColor,
              // fixedSize: Size(
              //   width ?? MediaQuery.of(context).size.width,
              //   height ?? 48,
              // ),
              alignment: Alignment.center,
              // textStyle: AppTextStyle.normalSemiBold16
              //     .copyWith(color: titleColor ?? appPrimaryDark)),
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: appPrimaryColor,
                fontSize: Responsive.isDesktop(context) ? 18.0 : 16.0,
                height: 1.5,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
