import 'package:get/get.dart';
import 'package:surfx_web/utils/screen_bindings.dart';

import '../screens/auth_screens/signin_screen.dart';
import 'app_strings.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kLoginScreenRoute, page: () => const SignInScreen(), binding: ScreenBindings(),),
    ];
  }
}
