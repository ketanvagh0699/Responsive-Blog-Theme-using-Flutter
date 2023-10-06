import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controllers/auth_controller.dart';

import '../../constants.dart';
import '../../responsive.dart';
import '../main/components/app_button_widget.dart';

class RoleSelectScreen extends StatefulWidget {
  const RoleSelectScreen({Key? key}) : super(key: key);

  @override
  State<RoleSelectScreen> createState() => _RoleSelectScreenState();
}

class _RoleSelectScreenState extends State<RoleSelectScreen> {
  AuthController authController = Get.find<AuthController>();
  String selectRole = '';
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, stateSet) {
      return Container(
        // constraints: BoxConstraints(
        //   maxWidth: kMaxWidth,
        // ),
        // padding: EdgeInsets.all(30.0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: kMaxWidth - 680.0,
          ),
          padding: EdgeInsets.all(
              kDefaultPadding + (Responsive.isDesktop(context) ? 40.0 : 10.0)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).buttonColor,
          ),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select Account",
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 25.0 : 19.0,
                    fontWeight: FontWeight.w700,
                    // color: appPrimaryDark,
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Obx(
                  () => Column(
                    children: authController
                        .loginDataModel.value.data!.loginFoundUsers!
                        .map(
                          (e) => CustomRadioTile(
                            title: e.name.toString(),
                            value: e.name.toString(),
                            groupValue: selectRole,
                            onChanged: (val) {
                              stateSet(() {
                                selectRole = val;
                                authController.loginUserRole.value = e;
                              });
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
                // Column(
                //   children: ['Test', 'Test1', 'Test2']
                //       .map(
                //         (e) => CustomRadioTile(
                //           title: e,
                //           value: e.toString(),
                //           groupValue: selectRole,
                //           onChanged: (val) {
                //             stateSet(() {
                //               selectRole = val;
                //             });
                //           },
                //         ),
                //       )
                //       .toList(),
                // ),
                SizedBox(
                  height: 40.0,
                ),
                AppButtonWidget(
                  text: "Send OTP",
                  textColor: whiteColor,
                  onPressed: () async {
                    if (selectRole.isNotEmpty) {
                      // html.window.open(
                      //   'https://corporate.propertise.com/',
                      //   "_self",
                      // );
                      log("message select role -> ${authController.loginUserRole.toJson()}");
                      authController.sendOTPLogin(
                        context: context,
                      );
                    } else {
                      authController.getXSnackBar(
                        "Error",
                        "Please select user role",
                        red,
                      );
                    }
                  },
                  fontSize: 16.0,
                  backgroundColor: appPrimaryColor,
                  borderSideColor: appPrimaryColor,
                  foregroundColor: appPrimaryColor,
                  width:
                      Get.width - (Responsive.isDesktop(context) ? 400.0 : 0.0),
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: 21.0, vertical: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CustomRadioTile extends StatefulWidget {
  final String title;
  final String value;
  final String groupValue;
  final void Function(String) onChanged;
  const CustomRadioTile(
      {Key? key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  @override
  State<CustomRadioTile> createState() => _CustomRadioTileState();
}

class _CustomRadioTileState extends State<CustomRadioTile> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);
    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: selected ? appPrimaryColor : lightGreyColor,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(2),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected ? appPrimaryColor : grey,
                  width: 2,
                ),
                // color: selected ? Colors.white : Colors.grey[200],
              ),
              child: Icon(
                Icons.circle,
                size: 16,
                color: selected ? appPrimaryColor : Colors.transparent,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              widget.title.toString(),
              style: TextStyle(
                color: Theme.of(context).textTheme.displayLarge!.color,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
