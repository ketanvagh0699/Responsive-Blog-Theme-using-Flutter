import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/constants.dart';
import 'package:news/controllers/auth_controller.dart';
import 'package:news/screens/main/components/app_button_widget.dart';

import '../../responsive.dart';
import '../contact/contact_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  "Log in to your account",
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 40.0 : 27.0,
                    fontWeight: FontWeight.w700,
                    // color: appPrimaryDark,
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    height: 1.1,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13.0,
                  ),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit amet odio semper egestas.",
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ? 18.0 : 16.5,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).textTheme.displayLarge!.color,
                      height: 1.7,
                      // letterSpacing: 0.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormFieldWidget(
                  title: "Email",
                  textEditingController: authController.txtEmailController,
                  hintText: "Enter email address",
                  validator: (value) => authController.validateEmail(value!),
                ),
                SizedBox(
                  height: Responsive.isDesktop(context) ? 30.0 : 10.0,
                ),
                TextFormFieldWidget(
                  title: "Password",
                  textEditingController: authController.txtPasswordController,
                  hintText: "Enter password",
                  validator: (value) => authController.validatePassword(value!),
                  isObscureText: true,
                  maxLength: 1,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    // Row(
                    //   children: [
                    //     Transform.scale(
                    //       scale: 1.3,
                    //       child: Checkbox(
                    //         value: isReminder,
                    //         // value: false,
                    //         materialTapTargetSize:
                    //             MaterialTapTargetSize
                    //                 .shrinkWrap,
                    //         visualDensity:
                    //             VisualDensity(horizontal: -4.0),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius:
                    //               BorderRadius.circular(3),
                    //         ),
                    //         side: BorderSide(
                    //           width: 1.0,
                    //         ),
                    //         onChanged: (val) {
                    //           stateSet(() {
                    //             isReminder = val!;
                    //           });
                    //         },
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: 10.0,
                    //     ),
                    //     Text(
                    //       "Remember Password",
                    //       style: TextStyle(
                    //         fontSize:
                    //             Responsive.isDesktop(context)
                    //                 ? 18.0
                    //                 : 16.5,
                    //         fontWeight: FontWeight.w500,
                    //         color: Theme.of(context)
                    //             .textTheme
                    //             .displayLarge!
                    //             .color,
                    //         // height: 1.7,
                    //         // letterSpacing: 0.5,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    InkWell(
                      onTap: () {
                        stateSet(
                          () {
                            authController.stepsIndex.value = 3;
                          },
                        );
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 17.0 : 16.5,
                          fontWeight: FontWeight.w500,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                          decoration: TextDecoration.underline,
                          // height: 1.7,
                          // letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                AppButtonWidget(
                  text: "Login",
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
                      authController.userLogin(
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
    // return Scaffold(
    //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    //   body: SizedBox(
    //     // width: double.infinity,
    //     child: SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           // SizedBox(
    //           //   height: 10.0,
    //           // ),
    //           // Container(
    //           //   constraints: BoxConstraints(
    //           //     maxWidth: kMaxWidth,
    //           //   ),
    //           //   padding: EdgeInsets.all(kDefaultPadding),
    //           //   child: Image.asset(
    //           //     GetStorage().read(AppSession.isThemeMode) == 2
    //           //         ? "assets/icons/name_logo_w.png"
    //           //         : "assets/icons/name_logo_g.png",
    //           //     // "assets/icons/logo.png",
    //           //     height: 65.0,
    //           //   ),
    //           // ),
    //           SizedBox(height: 10.0),
    //           Container(
    //             // constraints: BoxConstraints(
    //             //   maxWidth: kMaxWidth,
    //             // ),
    //             child: Container(
    //               constraints: BoxConstraints(
    //                 maxWidth: kMaxWidth - 680.0,
    //               ),
    //               padding: EdgeInsets.all(kDefaultPadding + 40.0),
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(15.0),
    //                 color: Theme.of(context).buttonColor,
    //               ),
    //               child: Form(
    //                 key: _formKey,
    //                 child: Column(
    //                   children: [
    //                     Text(
    //                       "Log in to your account",
    //                       style: TextStyle(
    //                         fontSize:
    //                             Responsive.isDesktop(context) ? 40.0 : 35.0,
    //                         fontWeight: FontWeight.w700,
    //                         // color: appPrimaryDark,
    //                         color:
    //                             Theme.of(context).textTheme.displayLarge!.color,
    //                         height: 1.1,
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       height: 10.0,
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.symmetric(
    //                         horizontal: 13.0,
    //                       ),
    //                       child: Text(
    //                         "Lorem ipsum dolor sit amet, consectetur adipiscing elit amet odio semper egestas.",
    //                         style: TextStyle(
    //                           fontSize:
    //                               Responsive.isDesktop(context) ? 18.0 : 16.5,
    //                           fontWeight: FontWeight.w500,
    //                           color: Theme.of(context)
    //                               .textTheme
    //                               .displayLarge!
    //                               .color,
    //                           height: 1.7,
    //                           // letterSpacing: 0.5,
    //                         ),
    //                         textAlign: TextAlign.center,
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       height: 10.0,
    //                     ),
    //                     TextFormFieldWidget(
    //                       title: "Email",
    //                       textEditingController:
    //                           authController.txtEmailController,
    //                       hintText: "Enter email address",
    //                       validator: (value) =>
    //                           authController.validateEmail(value!),
    //                     ),
    //                     SizedBox(
    //                       height: 30.0,
    //                     ),
    //                     TextFormFieldWidget(
    //                       title: "Password",
    //                       textEditingController:
    //                           authController.txtPasswordController,
    //                       hintText: "Enter password",
    //                       validator: (value) =>
    //                           authController.validatePassword(value!),
    //                       isObscureText: true,
    //                       maxLength: 1,
    //                     ),
    //                     SizedBox(
    //                       height: 15.0,
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Row(
    //                           children: [
    //                             Transform.scale(
    //                               scale: 1.3,
    //                               child: Checkbox(
    //                                 value: isReminder,
    //                                 materialTapTargetSize:
    //                                     MaterialTapTargetSize.shrinkWrap,
    //                                 visualDensity:
    //                                     VisualDensity(horizontal: -4.0),
    //                                 shape: RoundedRectangleBorder(
    //                                   borderRadius: BorderRadius.circular(3),
    //                                 ),
    //                                 side: BorderSide(
    //                                   width: 1.0,
    //                                 ),
    //                                 onChanged: (val) {
    //                                   setState(() {
    //                                     isReminder = val!;
    //                                   });
    //                                 },
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               width: 10.0,
    //                             ),
    //                             Text(
    //                               "Remember Password",
    //                               style: TextStyle(
    //                                 fontSize: Responsive.isDesktop(context)
    //                                     ? 18.0
    //                                     : 16.5,
    //                                 fontWeight: FontWeight.w500,
    //                                 color: Theme.of(context)
    //                                     .textTheme
    //                                     .displayLarge!
    //                                     .color,
    //                                 // height: 1.7,
    //                                 // letterSpacing: 0.5,
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                         Text(
    //                           "Forgot password?",
    //                           style: TextStyle(
    //                             fontSize:
    //                                 Responsive.isDesktop(context) ? 17.0 : 16.5,
    //                             fontWeight: FontWeight.w500,
    //                             color: Theme.of(context)
    //                                 .textTheme
    //                                 .displayLarge!
    //                                 .color,
    //                             decoration: TextDecoration.underline,
    //                             // height: 1.7,
    //                             // letterSpacing: 0.5,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 30.0,
    //                     ),
    //                     AppButtonWidget(
    //                       text: "Login",
    //                       textColor: whiteColor,
    //                       onPressed: () async {
    //                         // html.window.open(
    //                         //   'https://corporate.propertise.com/',
    //                         //   "_self",
    //                         // );
    //                         if (_formKey.currentState!.validate()) {
    //                           html.window.open(
    //                             'https://corporate.propertise.com/',
    //                             "_self",
    //                           );
    //                           // authController.userLogin();
    //                         }

    //                         // final fcmToken =
    //                         //     await FirebaseMessaging.instance.getToken();
    //                         // log("message final token ---> $fcmToken");
    //                       },
    //                       fontSize: 16.0,
    //                       backgroundColor: appPrimaryColor,
    //                       borderSideColor: appPrimaryColor,
    //                       foregroundColor: appPrimaryColor,
    //                       width: Get.width,
    //                       // padding: EdgeInsets.symmetric(
    //                       //     horizontal: 21.0, vertical: 20.0),
    //                     ),
    //                     SizedBox(
    //                       height: 20.0,
    //                     ),
    //                     new RichText(
    //                       text: new TextSpan(
    //                         text: 'Not an user yet? ',
    //                         style: TextStyle(
    //                           fontSize:
    //                               Responsive.isDesktop(context) ? 18.0 : 16.5,
    //                           color: Theme.of(context)
    //                               .textTheme
    //                               .displayLarge!
    //                               .color,
    //                         ),
    //                         children: <TextSpan>[
    //                           new TextSpan(
    //                             text: 'Create an account ',
    //                             style: new TextStyle(
    //                               fontWeight: FontWeight.w800,
    //                               fontSize: Responsive.isDesktop(context)
    //                                   ? 18.0
    //                                   : 16.5,
    //                               color: Theme.of(context)
    //                                   .textTheme
    //                                   .displayLarge!
    //                                   .color,
    //                               decoration: TextDecoration.underline,
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //           // SizedBox(
    //           //   height: 70.0,
    //           // ),
    //           // Divider(
    //           //   color: Theme.of(context).dividerColor,
    //           // ),
    //           // Padding(
    //           //   padding: const EdgeInsets.all(30.0),
    //           //   child: RichText(
    //           //     textAlign: Responsive.isDesktop(context)
    //           //         ? TextAlign.start
    //           //         : TextAlign.center,
    //           //     maxLines: 2,
    //           //     text: new TextSpan(
    //           //       text: 'Copyright © Propertise | Designed by ',
    //           //       style: TextStyle(
    //           //         color: Theme.of(context).textTheme.displayLarge!.color,
    //           //         fontWeight: FontWeight.normal,
    //           //         height: 1.5,
    //           //         fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
    //           //         fontFamily: "Roboto",
    //           //       ),
    //           //       children: <TextSpan>[
    //           //         new TextSpan(
    //           //           text: 'Propertise Templates',
    //           //           style: TextStyle(
    //           //             color:
    //           //                 Theme.of(context).textTheme.displayLarge!.color,
    //           //             fontWeight: FontWeight.normal,
    //           //             decoration: TextDecoration.underline,
    //           //             height: 1.5,
    //           //             fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
    //           //             fontFamily: "Roboto",
    //           //           ),
    //           //         ),
    //           //         new TextSpan(
    //           //           text: ' - Powered by ',
    //           //           style: TextStyle(
    //           //             color:
    //           //                 Theme.of(context).textTheme.displayLarge!.color,
    //           //             fontWeight: FontWeight.normal,
    //           //             fontFamily: "Roboto",
    //           //             fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
    //           //             height: 1.5,
    //           //           ),
    //           //         ),
    //           //         new TextSpan(
    //           //           text: 'Webflow',
    //           //           style: TextStyle(
    //           //             color:
    //           //                 Theme.of(context).textTheme.displayLarge!.color,
    //           //             fontWeight: FontWeight.normal,
    //           //             decoration: TextDecoration.underline,
    //           //             height: 1.5,
    //           //             fontSize: Responsive.isDesktop(context) ? 17.0 : 15.0,
    //           //           ),
    //           //         ),
    //           //       ],
    //           //     ),
    //           //   ),
    //           // )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
