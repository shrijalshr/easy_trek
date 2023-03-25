import 'package:easy_trek/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_trek/core/export.dart';
import 'package:easy_trek/helper/api.dart';
import 'package:easy_trek/helper/user_controller.dart';
import 'package:easy_trek/helper/global_functions.dart';
import 'dart:convert';

class HomeScreenController extends GetxController{
  RxBool err=false.obs;
  RxBool loading=true.obs;
  @override
  void onInit() {
    super.onInit();
    //Change value to name2
    Network().getData("/home")
    .then((value) => {
      
    });
  }
  
}