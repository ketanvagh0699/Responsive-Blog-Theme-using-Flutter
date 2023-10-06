import 'package:flutter/material.dart';
import 'package:news/screens/about_us/about_us.dart';
import 'package:news/screens/cart/cart_screen.dart';
import 'package:news/screens/contact/contact_screen.dart';
import 'package:news/screens/main/main_screen.dart';
import 'package:news/screens/solutions/solutions_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return PageRouteBuilder(pageBuilder: (context, a, b) => MainScreen());
      // return MaterialPageRoute(builder: (_) => Home());
      case aboutRoute:
        return PageRouteBuilder(
            pageBuilder: (context, a, b) => WhyPropertiseUs());
      case pagesRoute:
        return PageRouteBuilder(
            pageBuilder: (context, a, b) => SolutionsScreen());
      case contactRoute:
        return PageRouteBuilder(
            pageBuilder: (context, a, b) => ContactScreen());
      case cartRoute:
        return PageRouteBuilder(
            pageBuilder: (context, a, b) => ComingSoonScreen());
      default:
        return PageRouteBuilder(pageBuilder: (context, a, b) => MainScreen());
    }
  }
}

const String homeRoute = "/";
const String aboutRoute = "/about";
const String pagesRoute = "/pages";
const String contactRoute = "/contact";
const String cartRoute = "/cart";
