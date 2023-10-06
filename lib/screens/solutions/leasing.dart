import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';

import '../../responsive.dart';

class LeasingScreen extends StatefulWidget {
  const LeasingScreen({Key? key}) : super(key: key);

  @override
  State<LeasingScreen> createState() => _LeasingScreenState();
}

class _LeasingScreenState extends State<LeasingScreen> {
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
                "Manage your lease contracts from one place",
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
                "Always be up to date with all your residential or commercial leasing contracts. Receive notifications on contracts that are up for renewal. Automate notices and secure tenancy renewals in advance.",
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
              Container(
                // color: red,
                height: 250.0,
                width: 650.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    SvgPicture.asset('assets/images/tabs/6A.svg'),
                    Positioned(
                      top: -125.0,
                      left: 10,
                      right: 10,
                      child: SvgPicture.asset(
                        'assets/images/tabs/6B.svg',
                        width: 450.0,
                        height: 470.0,
                      ),
                    ),
                  ],
                ),
              )
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
                      "Manage your lease contracts from one place",
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
                      "Always be up to date with all your residential or commercial leasing contracts. Receive notifications on contracts that are up for renewal. Automate notices and secure tenancy renewals in advance.",
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
              Container(
                // color: red,
                height: 400.0,
                width: 650.0,
                child: Stack(
                  // alignment: Alignment.topCenter,
                  children: [
                    SvgPicture.asset('assets/images/tabs/6A.svg'),
                    Positioned(
                      top: -80.0,
                      left: 10,
                      right: 10,
                      child: SvgPicture.asset(
                        'assets/images/tabs/6B.svg',
                        width: 450.0,
                        height: 470.0,
                      ),
                    ),
                  ],
                ),
              )
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
                "Generate all your residential and commercial lease contracts",
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
                height: 8.0,
              ),
              Text(
                "Generate standard or custom leases and upload all contracts, tenant credentials and any other relevant documents and ensure you never look for them twice. ",
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
              Text(
                "Set up payment plans and schedule payment reminders",
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
                "Set your payment plan to reflect the frequency of each payment and schedule payment reminders that notify your tenants on any upcoming or overdue payments and auto invoice your tenants.\n\nGenerate multiple tenancy offers to your tenants and negotiate your tenancy financials and payment terms swiftly.",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SvgPicture.asset(
                "assets/images/tabs/7.svg",
                height: 200.0,
                width: 550.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              Container(
                height: 400.0,
                width: 650.0,
                child: SvgPicture.asset(
                  'assets/images/tabs/7.svg',
                  height: 400.0,
                  width: 650.0,
                ),
              ),
              // Image.network(
              //   'https://propertise-most-use-image.s3.me-south-1.amazonaws.com/landing_page/propertise_management/1.png',
              //   fit: BoxFit.fill,
              //   height: 400.0,
              //   width: 650.0,
              // )
              SizedBox(
                width: 60.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Generate all your residential and commercial lease contracts",
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
                      height: 15.0,
                    ),
                    Text(
                      "Generate standard or custom leases and upload all contracts, tenant credentials and any other relevant documents and ensure you never look for them twice. ",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Set up payment plans and schedule payment reminders",
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
                      height: 15.0,
                    ),
                    Text(
                      "Set your payment plan to reflect the frequency of each payment and schedule payment reminders that notify your tenants on any upcoming or overdue payments and auto invoice your tenants.\n\nGenerate multiple tenancy offers to your tenants and negotiate your tenancy financials and payment terms swiftly.",
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
                "Collect your rent on time with a diverse set of payment options",
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
                "Select from a range of payment methods to receive your rent and always have the option to allow your tenants to pay their rent using their credit card without the need to set up your own online payment system, saving you time and cost to offer this option to your tenant base.",
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
                "assets/images/tabs/8.svg",
                height: 200.0,
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
                      "Collect your rent on time with a diverse set of payment options",
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
                      "Select from a range of payment methods to receive your rent and always have the option to allow your tenants to pay their rent using their credit card without the need to set up your own online payment system, saving you time and cost to offer this option to your tenant base.",
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
                'assets/images/tabs/8.svg',
                height: 400.0,
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
                "Keep your occupancy rates up!",
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
                "Always be up to date with your occupancy rates and meet your targets effectively by understanding the underlying causes that lead to higher and lower occupancy rates.\n\nYou can easily narrow down the properties that are exposed to lower occupancy rates and take the required actions in advance to maintain and increase occupancy.",
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
                "assets/images/tabs/9.svg",
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              SvgPicture.asset(
                'assets/images/tabs/9.svg',
                height: 400.0,
                width: 650.0,
              ),
              SizedBox(
                width: 60.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keep your occupancy rates up!",
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
                      "Always be up to date with your occupancy rates and meet your targets effectively by understanding the underlying causes that lead to higher and lower occupancy rates.\n\nYou can easily narrow down the properties that are exposed to lower occupancy rates and take the required actions in advance to maintain and increase occupancy.",
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
