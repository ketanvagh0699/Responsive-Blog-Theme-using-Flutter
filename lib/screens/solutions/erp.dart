import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../responsive.dart';

class ERPScreen extends StatefulWidget {
  const ERPScreen({Key? key}) : super(key: key);

  @override
  State<ERPScreen> createState() => _ERPScreenState();
}

class _ERPScreenState extends State<ERPScreen> {
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
                "Workflows & Approvals",
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
                "Whether it’s a tenant moving in, maintenance request, or payment processing, you can easily set up, customize and manage your workflows and approval processes."
                "\n\nWith workflow management, you don’t need to disrupt your business you can simply start from where you last left off and get up and running right away."
                "\n\nYou can even monitor your workflows and identify bottlenecks to optimize your processes!",
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
                "assets/images/tabs/22.svg",
                height: 210.0,
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
                      "Workflows & Approvals",
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
                      "Whether it’s a tenant moving in, maintenance request, or payment processing, you can easily set up, customize and manage your workflows and approval processes."
                      "\n\nWith workflow management, you don’t need to disrupt your business you can simply start from where you last left off and get up and running right away."
                      "\n\nYou can even monitor your workflows and identify bottlenecks to optimize your processes!",
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
              Flexible(
                child: SvgPicture.asset(
                  'assets/images/tabs/22.svg',
                  height: 450.0,
                  width: 650.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 50.0 : 25.0,
        ),
        // section two
        Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Roles & permissions",
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
                "Assign each user a unique role and control their access and permissions the way that reflects their function and role."
                "\n\nWhichever organisation model you follow, you can easily reflect the way you operate by customizing each user’s role and access. You can assign single or multiple roles and responsibilities for each user, making every process and employee unique and clear in their role within the business."
                "\n\nYou can update your workflows at anytime, making it easier for you to scale your business at any time.",
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
                "assets/images/tabs/23.svg",
                height: 200.0,
                width: 500.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
          desktop: Row(
            children: [
              Flexible(
                child: SvgPicture.asset(
                  'assets/images/tabs/23.svg',
                  height: 450.0,
                  width: 650.0,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Roles & permissions",
                      // "Generated automated weekly\nor monthly reports",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.displayLarge!.color,
                        fontSize: 30.0,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      "Assign each user a unique role and control their access and permissions the way that reflects their function and role."
                      "\n\nWhichever organisation model you follow, you can easily reflect the way you operate by customizing each user’s role and access. You can assign single or multiple roles and responsibilities for each user, making every process and employee unique and clear in their role within the business."
                      "\n\nYou can update your workflows at anytime, making it easier for you to scale your business at any time.",
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
