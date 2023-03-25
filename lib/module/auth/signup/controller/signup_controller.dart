import 'package:easy_trek/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/helper/api.dart';
import 'package:easy_trek/helper/user_controller.dart';
import 'package:easy_trek/helper/global_functions.dart';
import 'dart:convert';

class SignupController extends GetxController{
  final UserController userController = Get.find();
  final TextEditingController email = TextEditingController(text: "");
  final TextEditingController password = TextEditingController(text: "");
  final TextEditingController confirmPassword = TextEditingController(text: "");
  RxBool loading=false.obs;
  register() {
    final String _email=email.text;
    final String _password=password.text;
    final String _confirmPassword=confirmPassword.text;
    loading.value=true;
    final Network api=Network();
    api.postData({"email":_email,"password":_password}, "register")
    .then((res) {

      if (res != null) {
        if (res.statusCode == 200) {
          var body = jsonDecode(res.body);
          print("From Get User-----> $body");
          UserModel userModel = UserModel();
          userModel = UserModel.fromJson(body['user']);
          print(body['user']);
          addJsonToSP("user", userModel);
          addStringToSP("accessToken",body['token'] );
          Get.toNamed(Routes.homescreen);

        } else if (res.statusCode == 500) {
          errorSnackbar("Failed to load",
              "You have encountered unexpected error. Please try again.");
        } else if (res.statusCode == 400) {
          errorSnackbar("Failed to Load", "You are not authorized.");
        } else {
          errorSnackbar(
              "Failed to load", "Something went wrong. Please try again.");
        }
      } else {
        errorSnackbar(
            "Failed to load", "Something went wrong. Please try again.");
      }

      loading.value=false;
    });

    

  }
}