import 'package:get/get.dart';
import 'package:surfx_web/screens/forgot_password/controller/forgot_pass_controller.dart';
import 'package:surfx_web/screens/listing_screen/controller/listing_controller.dart';
import 'package:surfx_web/screens/user_screen/controller/user_controller.dart';

import '../screens/auth_screens/controller/auth_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ForgotPassController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => ListingController());
  }
}
