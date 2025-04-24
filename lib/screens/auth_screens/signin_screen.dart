import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';
import 'controller/auth_controller.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: Get.height,
                width: Get.width,
                color: kGreyShade1Color,
                child: Padding(
                  padding: EdgeInsets.only(left: 100.w,right: 70.w,top: 85.h,bottom: 85.h),
                  child: SizedBox(
                    height: 642.h,
                    width: Get.width,
                    child: Stack(
                      children: [
                        Container(
                          height: 642.h,
                          width: 260.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1500)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(1500),
                              child: Image.asset(kOnboarding1,fit: BoxFit.cover,)),
                        ),
                        Positioned(
                          right: 40,
                          bottom: 130.h,
                          child: Container(
                            height: 400.h,
                            width: MediaQuery.of(context).size.width / 7.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1500)
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(1500),
                                child: Image.asset(kOnboarding2,fit: BoxFit.cover,)),
                          ),
                        ),
                        SizedBox(
                          height: Get.height,
                          width: Get.width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100.0,bottom: 300),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(kLinesIcon,height: 90,width: 90,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: Get.height,
                width: Get.width,
                color: kWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
