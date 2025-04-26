import 'package:get/get.dart';
import 'package:surfx_web/screens/forgot_password/new_pass_screen.dart';
import 'package:surfx_web/screens/forgot_password/send_otp_screen.dart';
import 'package:surfx_web/screens/forgot_password/verify_otp_screen.dart';
import 'package:surfx_web/screens/listing_screen/listing_screen.dart';
import 'package:surfx_web/utils/screen_bindings.dart';

import '../screens/auth_screens/signin_screen.dart';
import '../screens/user_screen/user_screen.dart';
import 'app_strings.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kLoginScreenRoute, page: () => const SignInScreen(), binding: ScreenBindings(),),
      GetPage(name: kSendOtpScreenRoute, page: () => const SendOtpScreen(), binding: ScreenBindings(),),
      GetPage(name: kVerifyOtpScreenRoute, page: () => const VerifyOtpScreen(), binding: ScreenBindings(),),
      GetPage(name: kSetNewPassScreenRoute, page: () => const SetNewPassScreen(), binding: ScreenBindings(),),
      GetPage(name: kDashboardScreenRoute, page: () => UserScreen(), binding: ScreenBindings(),),
      GetPage(name: kListingScreenRoute, page: () => ListingScreen(), binding: ScreenBindings(),),
    ];
  }
}
