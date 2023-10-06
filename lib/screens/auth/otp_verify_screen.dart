import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:news/controllers/auth_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants.dart';
import '../../responsive.dart';
import '../main/components/app_button_widget.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  GlobalKey<FormState> otpkey = GlobalKey<FormState>();
  TextEditingController txtOTP = TextEditingController();
  AuthController authController = Get.find<AuthController>();

  int secondsRemaining = 120;
  bool enableResend = false;
  String? remainTime;
  Timer? timer;

  @override
  initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
          Duration clockTimer = Duration(seconds: secondsRemaining);
          remainTime =
              '${clockTimer.inMinutes.remainder(60).toString().padLeft(2, '0')}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  void reSendOTP() {
    //other code here
    setState(() {
      secondsRemaining = 120;
      enableResend = false;
    });
    authController.sendOTPLogin(context: context);
  }

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
              kDefaultPadding + (Responsive.isDesktop(context) ? 40.0 : 15.0)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).buttonColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "OTP Verify",
                style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 30.0 : 20.0,
                  fontWeight: FontWeight.w700,
                  // color: appPrimaryDark,
                  color: Theme.of(context).textTheme.displayLarge!.color,
                  height: 1.1,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Form(
                key: otpkey,
                child: PinCodeTextField(
                  appContext: context,
                  textStyle: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).textTheme.displayLarge!.color!,
                      fontWeight: FontWeight.w500),
                  pastedTextStyle: TextStyle(
                    color: Theme.of(context).textTheme.displayLarge!.color!,
                    fontWeight: FontWeight.bold,
                    backgroundColor: primaryBlack,
                  ),
                  length: 6,
                  animationType: AnimationType.scale,
                  autoDismissKeyboard: true,
                  autoFocus: true,
                  enablePinAutofill: true,
                  validator: (v) {
                    if (v!.length < 6) {
                      return "Enter 6 number of OTP";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                      selectedColor: greyColor,
                      selectedFillColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      inactiveColor: greyColor,
                      inactiveFillColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight:
                          (Responsive.isDesktop(context) ? 55.0 : 40.0),
                      fieldWidth: (Responsive.isDesktop(context) ? 48.0 : 35.0),
                      activeFillColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      disabledColor: greyColor,
                      activeColor: greyColor,
                      errorBorderColor: redColor),
                  cursorColor: Theme.of(context).textTheme.displayLarge!.color!,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: txtOTP,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      authController.txtOTP = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    debugPrint("Allowing to paste $text");
                    return true;
                  },
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      color: Theme.of(context).textTheme.displayLarge!.color!,
                      size: 22,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '$remainTime ',
                      style: TextStyle(
                          color:
                              Theme.of(context).textTheme.displayLarge!.color!,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Regular"),
                    ),
                  ]),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn’t receive the OTP?",
                    style: TextStyle(
                      color: textGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: enableResend ? reSendOTP : null,
                    child: Text("  Resend OTP",
                        style: TextStyle(
                          color: enableResend
                              ? Theme.of(context).textTheme.displayLarge!.color!
                              : textGreyColor,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),

              AppButtonWidget(
                text: "Verify OTP",
                textColor: whiteColor,
                onPressed: () async {
                  // html.window.open(
                  //   'https://corporate.propertise.com/',
                  //   "_self",
                  // );
                  if (otpkey.currentState!.validate()) {
                    // html.window.open(
                    //   'https://corporate.propertise.com/',
                    //   "_self",
                    // );
                    log("message ---> data--> ${authController.txtOTP}");
                    authController.verifyOTPLogin(
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
                width:
                    Get.width - (Responsive.isDesktop(context) ? 400.0 : 0.0),
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
      );
    });
  }
}
