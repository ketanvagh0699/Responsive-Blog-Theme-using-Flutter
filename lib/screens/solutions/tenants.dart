import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../responsive.dart';

class TenantsScreen extends StatefulWidget {
  const TenantsScreen({Key? key}) : super(key: key);

  @override
  State<TenantsScreen> createState() => _TenantsScreenState();
}

class _TenantsScreenState extends State<TenantsScreen> {
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
                "Connect with all your tenants conveniently and easily",
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
                "One integrated app under your control, onboard all your tenants and allow them to:"
                "\n\t \u2713 Request to move in"
                "\n\t \u2713 Request to move out"
                "\n\t \u2713 Request maintenance"
                "\n\t \u2713 Renew Tenancies"
                "\n\t \u2713 Terminate Tenancies"
                "\n\t \u2713 Pay their rent"
                "\n\t \u2713 Upload documents\n\nAnd Propertise will do the rest.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              SvgPicture.asset(
                "assets/images/tabs/10.svg",
                height: 180.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/1.png',
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
                      "Connect with all your tenants conveniently and easily",
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
                      "One integrated app under your control, onboard all your tenants and allow them to:"
                      "\n\t \u2713 Request to move in"
                      "\n\t \u2713 Request to move out"
                      "\n\t \u2713 Request maintenance"
                      "\n\t \u2713 Renew Tenancies"
                      "\n\t \u2713 Terminate Tenancies"
                      "\n\t \u2713 Pay their rent"
                      "\n\t \u2713 Upload documents\n\nAnd Propertise will do the rest.",
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

              SizedBox(
                height: 450.0,
                width: 650.0,
                child: SvgPicture.asset(
                  'assets/images/tabs/10.svg',
                  // fit: BoxFit.fill,
                ),
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/1.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // )
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 70.0 : 25.0,
        ),
        // section two
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Schedule and send payment reminders",
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
                "Receive payments from your tenants with a range of payment methods including credit cards without the need to set up your own online payment system, saving you time and effort. Start receiving your money immediately.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SvgPicture.asset(
                "assets/images/tabs/11.svg",
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              SvgPicture.asset(
                'assets/images/tabs/11.svg',
                height: 450.0,
                width: 650.0,
              ),
              SizedBox(
                width: 00.0,
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/1.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // )
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Schedule and send payment reminders",
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
                      "Receive payments from your tenants with a range of payment methods including credit cards without the need to set up your own online payment system, saving you time and effort. Start receiving your money immediately.",
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
          height: Responsive.isDesktop(context) ? 70.0 : 25.0,
        ),
        // section three
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quick and centralized communications",
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
                "Say goodbye to scattered conversations and make every conversation with your tenants easy, simple and unique using an in-built centralized communication platform that allows you to conveniently and effectively manage your conversations.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SvgPicture.asset(
                "assets/images/tabs/12.svg",
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
                      "Quick and centralized communications",
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
                      "Say goodbye to scattered conversations and make every conversation with your tenants easy, simple and unique using an in-built centralized communication platform that allows you to conveniently and effectively manage your conversations.",
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
                width: 30.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/12.svg',
                height: 450.0,
                width: 650.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 70.0 : 25.0,
        ),
        // section four
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Keep your tenants satisfied, increase your retention and reduce your turnover",
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
                "Avoid higher turnover rates by capturing and tracking your tenant satisfaction scores and gain confidence in securing tenancy renewals by better understanding how to retain your tenants through valuable insights.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/13.svg',
                height: 200.0,
                width: 450.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              SvgPicture.asset(
                'assets/images/tabs/13.svg',
                height: 400.0,
                width: 650.0,
                // fit: BoxFit.fill,
              ),
              SizedBox(
                width: 0.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keep your tenants satisfied, increase your retention and reduce your turnover",
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
                      "Avoid higher turnover rates by capturing and tracking your tenant satisfaction scores and gain confidence in securing tenancy renewals by better understanding how to retain your tenants through valuable insights.",
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
      ],
    );
  }
}
