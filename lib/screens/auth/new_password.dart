import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../controllers/auth_controller.dart';
import '../../responsive.dart';
import '../contact/contact_screen.dart';
import '../main/components/app_button_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool isReminder = false;
  var _formKey = GlobalKey<FormState>();
  AuthController authController = Get.find<AuthController>();

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
              kDefaultPadding + (Responsive.isDesktop(context) ? 40.0 : 0.0)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).buttonColor,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 30.0 : 20.0,
                    fontWeight: FontWeight.w700,
                    // color: appPrimaryDark,
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 20.0,
                ),
                TextFormFieldWidget(
                  title: "New Password",
                  textEditingController:
                      authController.txtNewPasswordController,
                  hintText: "Enter new password",
                  validator: (value) => authController.validatePassword(value!),
                ),
                SizedBox(
                  height: Responsive.isDesktop(context) ? 30.0 : 10.0,
                ),
                TextFormFieldWidget(
                  title: "Confirm Password",
                  textEditingController:
                      authController.txtConfirmPasswordController,
                  hintText: "Enter confirm password",
                  validator: (value) => authController.validateSamePassword(
                    value!,
                    authController.txtNewPasswordController.text,
                    'confirm password',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),

                SizedBox(
                  height: 30.0,
                ),
                AppButtonWidget(
                  text: "Update Password",
                  textColor: whiteColor,
                  onPressed: () async {
                    // html.window.open(
                    //   'https://corporate.propertise.com/',
                    //   "_self",
                    // );
                    if (_formKey.currentState!.validate()) {
                      // html.window.open(
                      //   'https://corporate.propertise.com/',
                      //   "_self",
                      // );
                      authController.reSetPassword(
                        context: context,
                      );
                    }

                    // final fcmToken =
                    //     await FirebaseMessaging.instance.getToken();
                    // log("message final token ---> $fcmToken");
                  },
                  fontSize: 16.0,
                  backgroundColor: appPrimaryColor,
                  borderSideColor: appPrimaryColor,
                  foregroundColor: appPrimaryColor,
                  width: Get.width,
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: 21.0, vertical: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // new RichText(
                //   text: new TextSpan(
                //     text: 'Not an user yet? ',
                //     style: TextStyle(
                //       fontSize: Responsive.isDesktop(context)
                //           ? 18.0
                //           : 16.5,
                //       color: Theme.of(context)
                //           .textTheme
                //           .displayLarge!
                //           .color,
                //     ),
                //     children: <TextSpan>[
                //       new TextSpan(
                //         text: 'Create an account ',
                //         style: new TextStyle(
                //           fontWeight: FontWeight.w800,
                //           fontSize:
                //               Responsive.isDesktop(context)
                //                   ? 18.0
                //                   : 16.5,
                //           color: Theme.of(context)
                //               .textTheme
                //               .displayLarge!
                //               .color,
                //           decoration: TextDecoration.underline,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
