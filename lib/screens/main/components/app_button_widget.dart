import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class AppButtonWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? foregroundColor;
  final Color borderSideColor;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? fontSize;

  const AppButtonWidget({
    Key? key,
    required this.text,
    required this.textColor,
    required this.onPressed,
    required this.borderSideColor,
    this.padding,
    this.foregroundColor,
    this.backgroundColor,
    this.height,
    this.width,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: foregroundColor,
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 50.0 : 32.0,
                vertical: Responsive.isDesktop(context) ? 25.0 : 20.0,
              ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderSideColor,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          disabledForegroundColor: primaryWhite.withOpacity(0.38),
          backgroundColor: backgroundColor,
          alignment: Alignment.center,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: textColor,
              fontSize:
                  fontSize ?? (Responsive.isDesktop(context) ? 18.0 : 16.0),
              height: 1.5,
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
