import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../responsive.dart';

class AccountingScreen extends StatefulWidget {
  const AccountingScreen({Key? key}) : super(key: key);

  @override
  State<AccountingScreen> createState() => _AccountingScreenState();
}

class _AccountingScreenState extends State<AccountingScreen> {
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
                "Generate and automate your receivables and any income payment",
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
                "Whether you’re an accounting professional or not, we’ve made accounting easy for you!\n\nTrack all property receivables and income payments in one place and ensure you manage your cashflow accurately and with ease, making sure you boost owner, investor and lender confidence in your next financial report."
                "\n\nHave a clear record of all financial transactions related to your properties and assess the financial health of your business by evaluating the risks of late or missed payments to make informed decisions about tenant selection and lease renewals. ",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              Text(
                '\nReduce administration burdens by automating…'
                '\n\t \u2713  Rent payments'
                '\n\t \u2713  Reminders '
                '\n\t \u2713  Invoices'
                '\n\t \u2713  Payment statuses'
                '\n\t \u2713  Late payment fees'
                '\n\nRecord your receivables accurately and…'
                '\n\t \u2713  Develop better income forecasting'
                '\n\t \u2713  Generate accurate financial reporting'
                '\n\t \u2713  Allocate resources effectively'
                '\n\t \u2713  Manage risks on overdue payments'
                '\n\t \u2713  Comply with record keeping requirements',
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
                "assets/images/tabs/18.svg",
                height: 210.0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Generate and automate your receivables and any income payment",
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
                      "Whether you’re an accounting professional or not, we’ve made accounting easy for you!\n\nTrack all property receivables and income payments in one place and ensure you manage your cashflow accurately and with ease, making sure you boost owner, investor and lender confidence in your next financial report."
                      "\n\nHave a clear record of all financial transactions related to your properties and assess the financial health of your business by evaluating the risks of late or missed payments to make informed decisions about tenant selection and lease renewals. ",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                    Text(
                      '\nReduce administration burdens by automating…'
                      '\n\t \u2713  Rent payments'
                      '\n\t \u2713  Reminders '
                      '\n\t \u2713  Invoices'
                      '\n\t \u2713  Payment statuses'
                      '\n\t \u2713  Late payment fees'
                      '\n\nRecord your receivables accurately and…'
                      '\n\t \u2713  Develop better income forecasting'
                      '\n\t \u2713  Generate accurate financial reporting'
                      '\n\t \u2713  Allocate resources effectively'
                      '\n\t \u2713  Manage risks on overdue payments'
                      '\n\t \u2713  Comply with record keeping requirements',
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
                width: 50.0,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 70.0,
                  ),
                  SvgPicture.asset(
                    'assets/images/tabs/18.svg',
                    height: 400.0,
                    width: 650.0,
                  ),
                ],
              ),
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
                "Keep your expenses in order and track all your payables efficiently",
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
                "Whether its property maintenance, utilities, government fees or any other expense, record all payables and property expenses and keep track of your costs, while managing and allocating your budgets efficiently and flexibly. ",
                style: TextStyle(
                  height: 1.7,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  // color: greenBorder,
                ),
              ),
              Text(
                '\nKeep a clear view and record of your existing and future financial obligations to…'
                '\n\t \u2713  Manage budgets efficiently'
                '\n\t \u2713  Manage cashflow through timely payments '
                '\n\t \u2713  Maintain healthy relationships with vendors and suppliers'
                '\n\t \u2713  Control costs'
                '\n\t \u2713  Identify cost-saving opportunities'
                '\n\t \u2713  Avoid penalties'
                '\n\t \u2713  Keep a clear audit trail',
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
                "assets/images/tabs/19.svg",
                height: 210.0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/tabs/19.svg',
                height: 400.0,
                width: 650.0,
              ),
              SizedBox(
                width: 50.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keep your expenses in order and track all your payables efficiently",
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
                      "Whether its property maintenance, utilities, government fees or any other expense, record all payables and property expenses and keep track of your costs, while managing and allocating your budgets efficiently and flexibly. ",
                      style: TextStyle(
                        height: 1.7,
                        fontWeight: FontWeight.normal,
                        fontSize: 19,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        // color: greenBorder,
                      ),
                    ),
                    Text(
                      '\nKeep a clear view and record of your existing and future financial obligations to…'
                      '\n\t \u2713  Manage budgets efficiently'
                      '\n\t \u2713  Manage cashflow through timely payments '
                      '\n\t \u2713  Maintain healthy relationships with vendors and suppliers'
                      '\n\t \u2713  Control costs'
                      '\n\t \u2713  Identify cost-saving opportunities'
                      '\n\t \u2713  Avoid penalties'
                      '\n\t \u2713  Keep a clear audit trail',
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
        // section three
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Statement Reports",
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
                "Track your income and expense balance easily and flexibly for any period of time!",
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
                "assets/images/tabs/20.svg",
                height: 210.0,
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
                      "Statement Reports",
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
                      "Track your income and expense balance easily and flexibly for any period of time!",
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
                width: 50.0,
              ),
              SvgPicture.asset(
                'assets/images/tabs/20.svg',
                height: 400.0,
                width: 650.0,
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
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Generate invoices, receipts and more!",
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
                "Never have a missing financial document again! You can now configure and customize your invoices, receipts, refunds and more, and streamline and integrate them in every financial workflow while they are stored in one place under your control!",
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
                "assets/images/tabs/21.svg",
                height: 210.0,
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
              SvgPicture.asset(
                'assets/images/tabs/21.svg',
                height: 400.0,
                width: 650.0,
              ),
              SizedBox(
                width: 50.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Generate invoices, receipts and more!",
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
                      "Never have a missing financial document again! You can now configure and customize your invoices, receipts, refunds and more, and streamline and integrate them in every financial workflow while they are stored in one place under your control!",
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
        // SizedBox(
        //   height: Responsive.isDesktop(context) ? 30.0 : 25.0,
        // ),
      ],
    );
  }
}
