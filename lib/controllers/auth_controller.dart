import 'dart:convert';
import 'dart:developer';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news/constants.dart';
import 'package:news/models/login_data_model.dart';
import 'package:news/models/token_data_model.dart';
import 'package:news/ulits/api_files/api_methods.dart';
import 'package:public_ip_address/public_ip_address.dart';

class AuthController extends GetxController {
  // user login
  TextEditingController txtEmailController = TextEditingController();
  TextEditingController txtPasswordController = TextEditingController();

  TextEditingController txtNewPasswordController = TextEditingController();
  TextEditingController txtConfirmPasswordController = TextEditingController();

  /// contact us
  TextEditingController txtCNameController = TextEditingController();
  TextEditingController txtCEmailController = TextEditingController();
  TextEditingController txtCCompanyController = TextEditingController();
  TextEditingController txtCPhoneController = TextEditingController();
  TextEditingController txtCMessageController = TextEditingController();
  String? cCountryCode;
  RxList<String> featureList = <String>[].obs;

  /// solution tab
  RxBool isSolutionTabFormSubmit = false.obs;

  RxInt stepsIndex = 0.obs;
  RxBool loginFlow = true.obs;
  Rx<LoginDataModel> loginDataModel = LoginDataModel().obs;

  Rx<LoginFoundUsers> loginUserRole = LoginFoundUsers().obs;

  String? txtOTP;

  String? fcmToken = '';
  String? getIpAdd = '';

  @override
  void onInit() {
    super.onInit();
    debugPrint("Hello222");
    isSolutionTabFormSubmit.value =
        GetStorage().read(AppSession.isSolutionTabFormSubmit) == null
            ? false
            : GetStorage().read(AppSession.isSolutionTabFormSubmit);
    getAddress();
  }

  getAddress() async {
    try {
      /// Initialize Ip Address
      await IpAddress.getAllData().then((ip) {
        // print("message check default --->${ip['ip']} ==> ${ip}");
        getIpAdd = ip['ip'];
        update();
      });
    } catch (exception) {
      /// Handle the exception.
      print(exception);
    }
  }

  // login function
  userLogin({BuildContext? context}) async {
    var data = {
      "email": txtEmailController.text,
      "password": txtPasswordController.text,
      "ipAddress": getIpAdd,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.login,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");
      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        loginDataModel.value = LoginDataModel.fromJson(responseData['body']);

        log("message data response model  ==>${loginDataModel.toJson()}");
        if (loginDataModel.value.data!.loginFoundUsers!.length > 1) {
          stepsIndex.value = 1;
          update();
        } else {
          loginUserRole.value =
              loginDataModel.value.data!.loginFoundUsers!.first;
          stepsIndex.value = 2;
          sendOTPLogin();
          update();
        }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // forgot password function
  forgotPassword({BuildContext? context}) async {
    var data = {
      "email": txtEmailController.text,
      "ipAddress": getIpAdd,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.forgotPassword,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");

      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        loginDataModel.value = LoginDataModel.fromJson(responseData['body']);
        loginFlow.value = false;
        update();
        log("message data response model  ==>${loginDataModel.toJson()}");
        if (loginDataModel.value.data!.loginFoundUsers!.length > 1) {
          stepsIndex.value = 1;
          update();
        } else {
          loginUserRole.value =
              loginDataModel.value.data!.loginFoundUsers!.first;
          stepsIndex.value = 2;
          sendOTPLogin();
          update();
        }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // forgot password function
  reSetPassword({BuildContext? context}) async {
    var data = {
      "optionName": loginUserRole.value.name,
      "password": txtConfirmPasswordController.text,
      "otp": txtOTP,
      "token": tokenDataModel.value.data!.token!.toString(),
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.resetPassword,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");

      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        txtEmailController.clear();
        txtOTP = null;
        txtConfirmPasswordController.clear();
        txtNewPasswordController.clear();
        stepsIndex.value = 0;
        loginUserRole.value = LoginFoundUsers();
        loginFlow.value = true;
        update();
        // loginDataModel.value = LoginDataModel.fromJson(responseData['body']);
        // loginFlow.value = false;
        // update();
        // log("message data response model  ==>${loginDataModel.toJson()}");
        // if (loginDataModel.value.data!.loginFoundUsers!.length > 1) {
        //   stepsIndex.value = 1;
        //   update();
        // } else {
        //   loginUserRole.value =
        //       loginDataModel.value.data!.loginFoundUsers!.first;
        //   stepsIndex.value = 2;
        //   sendOTPLogin();
        //   update();
        // }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // send otp function
  sendOTPLogin({BuildContext? context}) async {
    var data = {
      "optionName": loginUserRole.value.name,
      "token": loginUserRole.value.token,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.sentOtp,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");
      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        getXSnackBar(
          "Success",
          responseData['body']['message'].toString(),
          greenColor,
        );
        stepsIndex.value = 2;
        update();
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  Rx<TokenDataModel> tokenDataModel = TokenDataModel().obs;
  // verify otp function
  verifyOTPLogin({BuildContext? context}) async {
    var data = {
      "optionName": loginUserRole.value.name,
      "token": loginUserRole.value.token,
      "otp": txtOTP,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.verifyOtp,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");
      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        tokenDataModel.value = TokenDataModel.fromJson(responseData['body']);
        update();
        // getXSnackBar(
        //   "Success",
        //   responseData['body']['message'].toString(),
        //   greenColor,
        // );
        if (loginFlow.value == true) {
          log("message token get -->>${responseData['body']['data']}");
          Get.back();
          html.window.open(
            'https://corporate.propertise.com/authentication?token=${responseData['body']['data']['token']}',
            "_self",
          );
          stepsIndex.value = 0;
          update();
        } else {
          stepsIndex.value = 4;
          update();
        }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // user contact function
  userContactUs({BuildContext? context}) async {
    var data = {
      "name": txtCNameController.text,
      "email": txtCEmailController.text,
      "message": txtCMessageController.text,
      "countryCode": cCountryCode,
      "companyName": txtCCompanyController.text,
      "phoneNumber": txtCPhoneController.text,
      "featureList": featureList,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.contact_us,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");
      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        log("message response 2000  ==> ${responseData['body']}");
        txtCNameController.clear();
        txtCEmailController.clear();
        txtCMessageController.clear();
        cCountryCode = null;
        txtCCompanyController.clear();
        txtCPhoneController.clear();
        featureList.clear();
        update();

        // tokenDataModel.value = TokenDataModel.fromJson(responseData['body']);
        update();
        getXSnackBar(
          "Success",
          responseData['body']['message'].toString(),
          greenColor,
        );
        // if (loginFlow.value == true) {
        //   log("message token get -->>${responseData['body']['data']}");
        //   Get.back();
        //   html.window.open(
        //     'https://corporate.propertise.com/authentication?token=${responseData['body']['data']['token']}',
        //     "_self",
        //   );
        //   stepsIndex.value = 0;
        //   update();
        // } else {
        //   stepsIndex.value = 4;
        //   update();
        // }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // solution get in touch function
  userGetInTouchUs({BuildContext? context}) async {
    var data = {
      "name": txtCNameController.text,
      "email": txtCEmailController.text,
      "message": txtCMessageController.text,
      "countryCode": cCountryCode,
      "companyName": txtCCompanyController.text,
      "phoneNumber": txtCPhoneController.text,
      "featureList": featureList,
    };
    log("message data --> $data");
    try {
      // log("message params data ==> $data");
      final responseData = await APIProvider().postDioHttpMethod(
        url: APIConstants.newEndSubPoint +
            APIConstants.secondEndSubPoint +
            APIConstants.contact_us,
        data: json.encode(data),
        context: context,
      );

      log("message response  ==> ${responseData['body']}");
      if ((responseData['body']['status'] == 200 ||
          responseData['body']['status'] == "200")) {
        log("message response 2000  ==> ${responseData['body']}");
        isSolutionTabFormSubmit.value = true;
        GetStorage().write(AppSession.isSolutionTabFormSubmit, true);
        txtCNameController.clear();
        txtCEmailController.clear();
        txtCMessageController.clear();
        cCountryCode = null;
        txtCCompanyController.clear();
        txtCPhoneController.clear();
        featureList.clear();
        update();
        // tokenDataModel.value = TokenDataModel.fromJson(responseData['body']);
        // update();
        getXSnackBar(
          "Success",
          responseData['body']['message'].toString(),
          greenColor,
        );
        // if (loginFlow.value == true) {
        //   log("message token get -->>${responseData['body']['data']}");
        //   Get.back();
        //   html.window.open(
        //     'https://corporate.propertise.com/authentication?token=${responseData['body']['data']['token']}',
        //     "_self",
        //   );
        //   stepsIndex.value = 0;
        //   update();
        // } else {
        //   stepsIndex.value = 4;
        //   update();
        // }
      } else {
        getXSnackBar(
          "Error",
          responseData['body']['message'].toString(),
          red,
        );
      }
    } catch (e) {
      log("message --> catch --> $e");
    }
  }

  // validation email
  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return "Email is required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String? validateCheckEmpty(String? value, String? title) {
    if (value!.isEmpty) {
      return "$title is required";
    } else {
      return null;
    }
  }

  // static String? validatePassword(String value) {
  //   String pattern =
  //       r'^.*(?=.{8,})((?=.*[!@#$%^&*()\-_=+{};:,<.>]){1})(?=.*\d)((?=.*[a-z]){1})((?=.*[A-Z]){1}).*$';
  //   RegExp regExp = RegExp(pattern);
  //   if (value.isEmpty) {
  //     return "Password is required";
  //   } else if (!regExp.hasMatch(value)) {
  //     return "The password must be at least 8 characters long and contain a mixture of both uppercase and lowercase letters, at least one number and one special character (e.g.,! @ # ?).";
  //   } else {
  //     return null;
  //   }
  // }
  String? validatePassword(String value) {
    String pattern = r'^.*(?=.{8,}).*$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Password is required";
    } else if (!regExp.hasMatch(value)) {
      return "The password must be at least 8 characters long.";
    } else {
      return null;
    }
  }

  // confirm password
  String? validateSamePassword(
      String rePassValue, String newPassValue, String type) {
    if (rePassValue.isEmpty) {
      return "$type required";
    } else if (rePassValue != newPassValue) {
      return "$type does not match";
    }
    return null;
  }

  void getXSnackBar(String title, String message, Color? color) {
    Get.snackbar(
      title,
      message,
      backgroundColor: color,
      colorText: primaryWhite,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      duration: const Duration(seconds: 2),
      borderRadius: 10,
      barBlur: 10,
    );
  }
}
