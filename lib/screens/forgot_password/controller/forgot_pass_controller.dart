import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotPassController extends GetxController {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  var isObscurePass = true.obs;
  var isObscureNewPass = true.obs;
}