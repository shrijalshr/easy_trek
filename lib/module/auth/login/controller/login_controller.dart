import 'dart:convert';

import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/helper/api.dart';
import 'package:easy_trek/helper/global_functions.dart';
import 'package:easy_trek/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController password = TextEditingController(text: "");
  RxBool loading = false.obs;

  login() {
    final String _email = email.text;
    final String _password = password.text;
    loading.value = true;
    final Network api = Network();

    api.postData({"email": _email, "password": _password}, "login").then((res) {
      if (res != null) {
        Map body = jsonDecode(res.body);
        if (res.statusCode == 200) {
          print("From Get User-----> $body");
          UserModel userModel = UserModel();
          userModel = UserModel.fromJson(body['user']);
          print(body['user']);
          addJsonToSP("user", userModel);
          addStringToSP("accessToken", body['token']);
          Get.toNamed(Routes.homescreen);
        } else if (res.statusCode== 401) {
          errorSnackbar("Invalid Username/Password",
              "Username or password did not match. Try again");
          
        } else if (res.statusCode == 400) {
          errorSnackbar(
              "Invalid Login", "Please provide valid email/password.");
          
        } else {
          
        }
      } else {
        errorSnackbar("Something went wrong", "Please try again later");
        
      }

      loading.value = false;

    });
  }
}
