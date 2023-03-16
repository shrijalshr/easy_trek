import 'package:get/get.dart';

class PasswordController extends GetxController {
  bool showPassword = false;

  togglePassword(value) {
    showPassword = !value;
    update();
  }
}
