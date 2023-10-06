import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF3B1D);
const kDarkBlackColor = Color(0xFF191919);
const kBgColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);

/// dark mode color
const dBGColor = const Color(0xff121715);
const dCardColor = const Color(0xff0E2722);

const kDefaultPadding = 20.0;
// const kMaxWidth = 1232.0;
const kMaxWidth = 1252.0;
const kDefaultDuration = Duration(milliseconds: 250);

/// app color code
const white = Color(0xffffffff);
const textPrimary = Color(0xff042419);
const greenBg = Color(0xff15392D);
const greenLight = Color(0xff94DA44);
const greenBorder = Color(0xff1a472f);
const orange = Color(0xffFA7634);
// 11184E

Map<String, Color> colorStyles = {
  'primary': Colors.blue,
  'light_font': Colors.black54,
  'gray': Colors.black45,
  'white': Colors.white
};
const Color appTextColor = Color(0xff31435B);
const Color lightBlackColor = Color(0xff1A1A1A);
const Color greyColor = Color(0xffC0C0C0);
const Color appBackgroundColor = Color(0xffF1F5FA);
const Color textGreyColor = Color(0xffACB0B5);
const Color appColor = Color(0xff1E252B);
const Color appBlackColor = Color(0xff1E1E1E);
const Color dividerColor = Color(0xff8D8DA2);

const Color containerBlackColor = Color(0xff1E252A);
const Color darkPrimaryButtonColor = Color(0xffA88C40);
const Color secondaryButtonColor = Color(0xff5A5A5A);
const Color darKYellowGradientColor = Color(0xff8F5E25);
const Color lightYellowGradientColor = Color(0xffD7BD73);
const Color gradientLightColor = Color(0xff1E252B);
const Color gradientDarkColor = Color(0xff2A333B);
const Color textFieldColor = Color(0xff32393F);
const Color textFieldTitleColor = Color(0xffC0C0C0);
const Color textFieldBorderColor = Color(0xffE2E3E5);
const Color titleBlack = Color(0xff1E1E1E);
const Color barrierBlackColor = Color(0xff2C353D);
const Color startColor = Color(0xffD7D9DB);
const Color blurBackgroundColor = Color(0xff282829);
const Color yellowColor = Color(0xffFFC400);
const Color skyColor = Color(0xff63C7F5);
const Color whiteColor = Color(0xffffffff);
const Color redColor = Color(0xffFF3333);
const Color bgBackGround = Color(0xFFD1F1DF);

const Color commonGreyColor = Color(0xff6E757C);
const Color offWhite = Color(0xffF8F8F8);
const Color onGoingBackgroundBlack = Color(0xff282828);
const Color backgroundColor = Color(0xffF9F9F9);

const Color lightGreyColor = Color(0xffE9E9E9);

const Color backgroundGrey = Color(0xffECEFF3);
const Color lightGrey = Color(0xffF4F4F5);
const Color hintGrey = Color(0xffBABABA);
const Color contentGrey = Color(0xff969498);
const Color regularGrey = Color(0xff7F7D89);
const Color darkGreyWhite = Color(0xffA1ACB6); //505050
// const Color? titleBlack = Color(0xff333333);

const Color greySwitchColor = Color(0xff808080);
const Color greenColor = Color(0xff19AA5C);
const Color chipColor = Color(0xffE1FBF7);
const Color iconsColor = Color(0xffB8F6ED);
const Color darkGreenColor = Color(0xFF18ac8c);
const Color buttonGreenColor = Color(0xff129375);
const Color lightRedColor = Color(0xffFF4A59);
const Color lightAppColor = Color(0xffFFE7E7);
const Color red = Color(0xffB21807); //E22A2A
const Color success = Color(0xff426d54); //5FB924
const Color infoDialog = Color(0xff79B3E4);
const Color blue = Color(0xff068AEC);
const Color yellow = Color(0xffFFCC00);
const Color borderGrey = Color(0xffDBDBDB);

Color lightSilver = const Color(0xffF7F7F7);
const Color darkSilver = Color(0xffE4E4E4);
Color grey = const Color(0xff999999);

const Color primaryBlack = Color(0xFF000000);

const int blackPrimaryValue = 0xFF000000;

const Color primaryWhite = Color(0xFFFFFFFF);

const int scaffoldValue = 0xFFFAFAFA;

const Color scaffoldColor = Color(0xFFFAFAFA);

const Color appPrimaryDark = Color(0xFF0B5647);

const Color textFieldBGColor = Color(0xFFECEFF4);

const Color darkBoxBGColor = Color(0xFF128A79);

Map<int, Color> primaryAppColor = {
  50: const Color.fromRGBO(21, 172, 142, .1),
  100: const Color.fromRGBO(21, 172, 142, .2),
  200: const Color.fromRGBO(21, 172, 142, .3),
  300: const Color.fromRGBO(21, 172, 142, .4),
  400: const Color.fromRGBO(21, 172, 142, .5),
  500: const Color.fromRGBO(21, 172, 142, .6),
  600: const Color.fromRGBO(21, 172, 142, .7),
  700: const Color.fromRGBO(21, 172, 142, .8),
  800: const Color.fromRGBO(21, 172, 142, .9),
  900: const Color.fromRGBO(21, 172, 142, 1),
};

MaterialColor appPrimaryColor = MaterialColor(0xff15AC8E, primaryAppColor);

/// 9af7e4
// LinearGradient appGradient = const LinearGradient(
//   colors: [
//     Color(0xFF15AC8E),
//     Color(0xFF0B5647),
//   ],
//   begin: Alignment.centerLeft,
//   end: Alignment.centerRight,
// );

LinearGradient appGradient = const LinearGradient(
  colors: [
    Color(0xFF0B5647),
    Color(0xFF0B5647),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient backGroundGradient = const LinearGradient(
  colors: [
    Color(0xfffef4ec),
    Color(0xffffffff),
    Color(0xfffef4ec),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

/// String
class AppSession {
  static const String userToken = "userToken";
  static const String userId = "userId";
  static const String userName = "userName";
  static const String userEmail = "userEmail";
  static const String accountCompletionStatus = "accountCompletionStatus";
  static const String isDarkThemeMode = "darkThemeMode";
  static const String isThemeMode = "isThemeMode";
  static const String isHomeScreenGuide = "isHomeScreenGuide";
  static const String isTenancyTabScreenGuide = "isTenancyTabScreenGuide";
  static const String isPaymentTabScreenGuide = "isPaymentTabScreenGuide";
  static const String currentPageIndex = "currentPageIndex";
  static const String currentPageRoute = "currentPageRoute";
  static const String isSolutionTabFormSubmit = "isSolutionTabFormSubmit";

  static const String vapIDKey =
      'BGghgydaPGKxRTV85G4ALi4Xrdwo201ubZRDfsohKZ89bKYB5dwwOovMihjIWkJ30tSkmmveow_n6VjgTZshI1c';
}

class APIConstants {
  static const String newEndSubPoint = "https://api.propertise.com/";
  static const String secondEndSubPoint = "landing_page/";
  static const String login = "login";
  static const String sentOtp = "sent_otp";
  static const String verifyOtp = "verify_otp";
  static const String forgotPassword = "forgot_password";
  static const String resetPassword = "reset_password";
  static const String contact_us = "contact_us";
}

class AppRoutes {
  static const String home = "/";
  static const String solutions = "/solutions";
  static const String whyPropertise = "/whyPropertise";
  static const String contact = "/contact";
  static const String comingSoon = "/comingSoon";
  static const String login = "login";
}
