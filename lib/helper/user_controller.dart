import 'package:easy_trek/models/user_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController {
    RxBool isLogged=false.obs;
    Rx<UserModel>  user=UserModel().obs;

    loadUser(){
      
    }

}