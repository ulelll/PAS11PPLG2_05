import 'package:get/get.dart';

class UserController extends GetxController {
  var username = ''.obs;

  void setUsername(String name) {
    username.value = name;
  }

  void clearUsername() {
    username.value='';
}
}