import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../controllers/theme_controller.dart';
import '../../responsive.dart';
import '../main/main_home_screen.dart';

class ComingSoonScreen extends StatefulWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

  @override
  State<ComingSoonScreen> createState() => _ComingSoonScreenState();
}

class _ComingSoonScreenState extends State<ComingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return MainHomeScreen(
      // firstSection: Container(
      //   child: Text("Hello World"),
      // ),
      child: Container(
        // height: Get.height / 2,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            SvgPicture.asset(
              'assets/images/coming_soon.svg',
              height: 300,
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "We are building something new! \n\nStay tuned for our announcement. \n\nWe promise it's worth the wait!",
                style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 45.0 : 25.0,
                  fontWeight: FontWeight.w700,
                  // color: appPrimaryDark,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  height: .8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
