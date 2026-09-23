import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vedaxi/BottomNavigationExample.dart';
import 'package:vedaxi/api_services/api_services.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<void> loginCont() async {
    final respo = await ApiServices().login(email.text, password.text);
    if (respo.responseCode.toString() == "1") {
      Get.snackbar(
        "Success",
        respo.message.toString(),
        backgroundColor: Colors.green,
      );
      Get.to(BottomNavigationExample());
    } else {
      Get.snackbar(
        "Error",
        respo.message.toString(),
        backgroundColor: Colors.red,
      );
    }
  }
}
