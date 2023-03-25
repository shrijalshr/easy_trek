import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class BottomNavigationController extends GetxController {
  RxInt position = 0.obs;
  setLocation(_position){
    position.value=_position;
  }

}