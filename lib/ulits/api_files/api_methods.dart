import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../constants.dart';
import 'internet_error.dart';
import 'process_indicator.dart';

class APIProvider {
  static Dio? _dio;
  static Circle processIndicator = Circle();
  // NetworkCheck networkCheck = NetworkCheck();
  static InternetError internetError = InternetError();
  static final dataStorage = GetStorage();

  static Future<Map<String, String>> getHeaders() async {
    final String? token = dataStorage.read(AppSession.userToken);
    log("Token :- " + dataStorage.read(AppSession.userToken).toString());
    if (token != null) {
      debugPrint(
          '~~~~~~~~~~~~~~~~~~~~ SET HEADER : $token ~~~~~~~~~~~~~~~~~~~');
      return {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'authorization': token,
      };
    } else {
      return {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
    }
  }

  static setDynamicHeader({@required String? endPoint}) async {
    // endPointUrl = endPoint;
    BaseOptions options = BaseOptions(
      receiveTimeout: const Duration(milliseconds: 50000),
      connectTimeout: const Duration(milliseconds: 50000),
    );
    // _dioCacheManager = DioCacheManager(CacheConfig());
    final token = await getHeaders();
    options.headers.addAll(token);
    _dio = Dio(options);
  }

  Future<Map<String, dynamic>> postDioHttpMethod({
    BuildContext? context,
    required String url,
    required data,
    final header,
  }) async {
    var internet = await check();
    if (internet) {
      if (context != null) processIndicator.show(context);
      try {
        debugPrint("URL :" + url);
        // debugPrint("URL data :" + data.toString());
        // debugPrint("URL data  type :" + data.runtimeType.toString());
        Response response = await Dio().post(
          url,
          data: data,
          options: header,
        );

        // log(' response ==>${response.toString()}');

        if (context != null) processIndicator.hide(context);
        var responseBody;
        if (response.statusCode == 200) {
          try {
            // if (themeController.isEncrypt.value) {
            //   response.data['data'] = jsonDecode(
            //       CommonMethod().decryptWithKeyAndIV(response.data['data']));
            // }
            responseBody = json.decode(json.encode(response.data));
          } catch (error) {
            debugPrint('decode error');
            responseBody = response.data;
          }
          return {
            'body': responseBody,
            'headers': response.headers,
            'error_description': null,
          };
        } else {
          if (context != null) processIndicator.hide(context);
          return {
            'body': null,
            'headers': null,
            'error_description': "Something Went Wrong",
          };
        }
      } on DioError catch (e) {
        if (context != null) processIndicator.hide(context);
        // log('data error ==> ${e.response?.data.toString()}');
        log(e.message.toString());
        log(e.response!.statusMessage.toString());
        log(e.response!.statusCode.toString());
        // log(e.message.toString());
        Map<String, dynamic> responseData = {
          'body': e.response?.data,
          'headers': null,
          // 'error_description': await handleError(e, context,
          //     message: e.response?.data['message']),
          // 'error_description': await _handleError(e, context,
          //     message: e.response?.data['message']),
        };
        return responseData;
      }
    } else {
      Map<String, dynamic> responseData = {
        'body': null,
        'headers': null,
        'error_description': "Internet Error",
      };
      internetError.addOverlayEntry(context);
      return responseData;
    }
  }

  static Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
}
