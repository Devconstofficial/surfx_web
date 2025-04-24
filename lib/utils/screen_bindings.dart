import 'package:get/get.dart';

import '../screens/auth_screens/controller/auth_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());

  }
}
