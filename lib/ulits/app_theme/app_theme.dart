import 'package:flutter/material.dart';
import '../../constants.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    fontFamily: "Roboto",

    // shadowColor: Colors.grey.withOpacity(0.4),
    // scaffoldBackgroundColor: Colors.grey.shade900,
    // scaffoldBackgroundColor: Color(0xff0E2722),
    dividerColor: dividerColor,
    scaffoldBackgroundColor: const Color(0xff121715),

    // scaffoldBackgroundColor: Colors.black,
    // appBarTheme: AppBarTheme(color: whiteColor.withOpacity(.1)),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: whiteColor.withOpacity(.1),
    // ),
    cardColor: const Color(0xff0E2722),
    primaryColor: appPrimaryColor,
    buttonColor: const Color(0xff0E2722),
    hintColor: const Color(0xff0E2722),
    textTheme: TextTheme(
      // titleMedium: TextStyle(color: whiteColor),
      headlineLarge: TextStyle(
        color: whiteColor.withOpacity(.15),
      ),
      displayLarge: const TextStyle(
        color: whiteColor,
      ),
      // displayLarge: TextStyle(color: Color(0xffD0E0C8)),
      displayMedium: const TextStyle(color: iconsColor),
      displaySmall: TextStyle(color: whiteColor.withOpacity(.1)),
      headlineMedium: TextStyle(color: appPrimaryColor),
      headlineSmall: TextStyle(color: whiteColor.withOpacity(.5)),
      titleLarge: TextStyle(
        color: whiteColor.withOpacity(.1),
      ),
      titleMedium: const TextStyle(
        color: whiteColor,
      ),
      titleSmall: const TextStyle(color: Colors.white),
      labelLarge: TextStyle(
        color: whiteColor.withOpacity(.2),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: appPrimaryColor)
        .copyWith(background: const Color(0xff121715)),
    bottomAppBarTheme: BottomAppBarTheme(color: whiteColor.withOpacity(.1)),
  );

  static final lightTheme = ThemeData(
    fontFamily: "Roboto",
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: appColor),
    // bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
    shadowColor: Colors.white,
    buttonColor: chipColor,
    dividerColor: dividerColor.withOpacity(.8),
    scaffoldBackgroundColor: Colors.white,
    cardColor: whiteColor,
    hintColor: darkBoxBGColor,
    primaryColor: appPrimaryColor,
    appBarTheme: AppBarTheme(color: appPrimaryColor),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: offWhite,
    ),
    textTheme: TextTheme(
      // titleMedium: TextStyle(color: appPrimaryColor),
      headlineLarge: TextStyle(
        color: appColor.withOpacity(.2),
      ),
      displayLarge: const TextStyle(color: appTextColor),
      displayMedium: const TextStyle(color: buttonGreenColor),
      displaySmall: const TextStyle(color: whiteColor),
      headlineMedium: const TextStyle(color: whiteColor),
      headlineSmall: TextStyle(
        color: appPrimaryColor.shade400,
      ),
      titleLarge: const TextStyle(color: offWhite),
      titleMedium: const TextStyle(color: appBlackColor),
      titleSmall: const TextStyle(color: appBlackColor),
      labelLarge: TextStyle(
        color: appPrimaryColor,
      ),
      // button: TextStyle(
      //   color: appColor.withOpacity(.2),
      // ),
    ),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: appPrimaryColor)
        .copyWith(background: backgroundGrey),
    bottomAppBarTheme: BottomAppBarTheme(color: offWhite),
  );
}
