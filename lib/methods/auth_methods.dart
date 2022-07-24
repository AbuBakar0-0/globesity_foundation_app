import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:globesity/screens/starters.dart';
import 'package:globesity/widgets/progress_indicator.dart';
import '../constants/users.dart';
import 'gen_token.dart';

login(var email, var password, context) async {
  print("CAlLED");
  indicator("LOGGING IN", context);
  var token = await getAuthToken();
  try {
    var dio = Dio();
    String url = ("https://www.zohoapis.com/crm/v2/Contacts").toString();
    dio.options.headers['Authorization'] =
        'Zoho-oauthtoken ' + token.toString();
    var response = await dio.get(url);
    var res = jsonDecode(response.toString());
    Navigator.pop(context);
    for (var i = 0; i < res['data'].length; i++) {
      if (res['data'][i]['Email'].toString().toLowerCase() ==
              email.toString().toLowerCase() &&
          res['data'][i]['Password'].toString() == password.toString()) {
        Users.id = res['data'][i]['id'].toString();
        Users.fullName = res['data'][i]['Full_Name'].toString();
        Users.password = res['data'][i]['Password'].toString();
        Users.mobile = res['data'][i]['Mobile'].toString();
        Users.email = res['data'][i]['Email'].toString();
        Users.isLoggedin = true;
        Users.bed = res['data'][i]['Bedtime'].toString();
        Users.wakeup = res['data'][i]['Wakeup'].toString();

        Users.age = res['data'][i]['Age'].toString();
        Users.dailyActivity = res['data'][i]['Daily_Activity'].toString();
        Users.height = res['data'][i]['Height'].toString();
        Users.weight = res['data'][i]['Weight'].toString();
        Users.weight6 = res['data'][i]['Weight_6_months_ago'].toString();
        Users.mailing = res['data'][i]['Mailing_Street'].toString();
        Users.country = res['data'][i]['Mailing_Country'].toString();
        Users.status = res['data'][i]['STATUS'].toString();
        Users.gender = res['data'][i]['Gender'].toString();
        Users.weightLost=res['data'][i]['Weight_Lost'].toString();
        if (Users.gender.toString().toLowerCase() == "female") {
          Users.healthy = res['data'][i]['Healthy_Weight_F'].toString();
          Users.weighttolose = res['data'][i]['Weight_to_lose_F'].toString();
        } else {
          Users.healthy = res['data'][i]['Healthy_Weight_M'].toString();
          Users.weighttolose = res['data'][i]['Weight_to_lose_M'].toString();
        }
        Get.offAll(const Starters());
        break;
      } else {
        Navigator.pop(context);
        indicator("Invalid Credentials", context);
      }
    }
  } catch (e) {
    print("CATCHED");
    login(email, password, context);
  }
}
