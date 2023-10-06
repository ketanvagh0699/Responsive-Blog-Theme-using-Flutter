import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/constants.dart';
import 'package:news/responsive.dart';

class PropertyManagementScreen extends StatefulWidget {
  const PropertyManagementScreen({Key? key}) : super(key: key);

  @override
  State<PropertyManagementScreen> createState() =>
      _PropertyManagementScreenState();
}

class _PropertyManagementScreenState extends State<PropertyManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // section one
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "One view to your entire portfolio",
                // "Generated automated weekly\nor monthly reports",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: appTextColor,
                  fontSize: 22.0,
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Whether you’re managing a single unit, building or an entire community, view and manage your portfolio effortlessly on one platform, view important stats and have easy access to key actions that allow you to take full control over your property operations, financials and many more, allowing you to maximize your potential!",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/1.svg',
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "One view to your entire portfolio",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Whether you’re managing a single unit, building or an entire community, view and manage your portfolio effortlessly on one platform, view important stats and have easy access to key actions that allow you to take full control over your property operations, financials and many more, allowing you to maximize your potential!",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60.0,
              ),

              SvgPicture.asset(
                'assets/images/tabs/1.svg',
                height: 400.0,
                width: 450.0,
                fit: BoxFit.contain,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/property_management/1.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // )
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 80.0 : 25.0,
        ),
        // section two
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Migrate your data quickly and effectively",
                // "Generated automated weekly\nor monthly reports",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: appTextColor,
                  fontSize: 22.0,
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Save weeks or even months of effort in data migration, with a few simple steps you can have your property data migrated and connected on Propertise, getting you up and running in no time! ",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // SvgPicture.asset(
              //   "assets/images/tab1/2.svg",
              //   height: 280.0,
              //   width: 500.0,
              //   fit: BoxFit.fill,
              // ),
              SvgPicture.asset(
                'assets/images/tabs/2.svg',
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/property_management/2.svg',
              //   // fit: BoxFit.fill,
              //   // height: 560.0,
              //   // width: 730.0,
              // )
            ],
          ),
          desktop: Row(
            children: [
              SvgPicture.asset(
                'assets/images/tabs/2.svg',
                height: 400.0,
                width: 560.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/property_management/2.svg',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // ),
              SizedBox(
                width: 60.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Migrate your data quickly and effectively",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Save weeks or even months of effort in data migration, with a few simple steps you can have your property data migrated and connected on Propertise, getting you up and running in no time! ",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 80.0 : 25.0,
        ),
        // section three
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Property insights and summaries and reports",
                // "Generated automated weekly\nor monthly reports",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: appTextColor,
                  fontSize: 22.0,
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "You can now monitor your properties’ performance anywhere anytime! With Propertise’s in-built dashboards, you can have access to a range of key insights that link all your important property data, to keep you informed and up to date with important aspects on your portfolio. You can ensure your business is running smoothly while you focus on everything else that matters.\n\nBetter insights, better actions! ",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/3.svg',
                height: 210.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/3.png',
              //   // fit: BoxFit.fill,
              //   // height: 560.0,
              //   // width: 730.0,
              // )
            ],
          ),
          desktop: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Property insights and summaries and reports",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "You can now monitor your properties’ performance anywhere anytime! With Propertise’s in-built dashboards, you can have access to a range of key insights that link all your important property data, to keep you informed and up to date with important aspects on your portfolio. You can ensure your business is running smoothly while you focus on everything else that matters.\n\nBetter insights, better actions! ",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/3.svg',
                height: 400.0,
                width: 650.0,
                fit: BoxFit.fill,
              ),

              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/3.png',
              //   fit: BoxFit.fill,
              //   height: 430.0,
              //   width: 680.0,
              // ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 80.0 : 25.0,
        ),
        // section four
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Assign property managers",
                // "Generated automated weekly\nor monthly reports",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: appTextColor,
                  fontSize: 22.0,
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "You can easily assign your property managers to each property and streamline and delegate workorders, allowing them meet all property requirements, achieve their targets while creating a memorable tenant experience.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/4.svg',
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/4.png',
              //   // fit: BoxFit.fill,
              //   // height: 560.0,
              //   // width: 730.0,
              // )
            ],
          ),
          desktop: Row(
            children: [
              SvgPicture.asset(
                'assets/images/tabs/4.svg',
                height: 400.0,
                width: 650.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/4.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // ),
              SizedBox(
                width: 60.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assign property managers",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "You can easily assign your property managers to each property and streamline and delegate workorders, allowing them meet all property requirements, achieve their targets while creating a memorable tenant experience.",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 80.0 : 25.0,
        ),
        // section five
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Property Rating",
                // "Generated automated weekly\nor monthly reports",
                style: TextStyle(
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: appTextColor,
                  fontSize: 22.0,
                  height: 1.5,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "We all strive for higher ratings; simply put, they reflect our commitment and dedication to clients and the overall business. Now you can track and monitor your properties ratings through your tenant’s eyes. Making it easier for you to improve and exceed expectations by quickly identifying and resolving root issues.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/5.svg',
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),

              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/5.png',
              //   // fit: BoxFit.fill,
              //   // height: 560.0,
              //   // width: 730.0,
              // )
            ],
          ),
          desktop: Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Property Rating",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: appTextColor,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "We all strive for higher ratings; simply put, they reflect our commitment and dedication to clients and the overall business. Now you can track and monitor your properties ratings through your tenant’s eyes. Making it easier for you to improve and exceed expectations by quickly identifying and resolving root issues.",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/5.svg',
                height: 400.0,
                width: 650.0,
                fit: BoxFit.fill,
              ),

              // Image.asset(
              //   'assets/images/tab1/5.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 580.0,
              //   filterQuality: FilterQuality.high,
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
