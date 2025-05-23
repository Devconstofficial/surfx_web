import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:surfx_web/utils/app_strings.dart';
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
                                Image.asset(kLinesIcon,height: 90.h,width: 90.w,),
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
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 187,height: 40,
                              child: Image.asset(kLogo,fit: BoxFit.cover,)),
                          SizedBox(height: 60.h,),
                          Text("Sign In",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 34.sp),),
                          SizedBox(height: 10.h,),
                          Text("Please fill details to access your \naccount!",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 20.sp),),
                          SizedBox(height: 31.h,),
                          Text("Email",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          SizedBox(height: 3.h,),
                          CustomTextField(
                              hintText: "Enter your email",
                            height: 57.h,
                          ),
                          SizedBox(height: 16.h,),
                          Text("Password",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          SizedBox(height: 3.h,),
                          Obx(
                                () => CustomTextField(
                                  height: 57.h,
                              controller: controller.passwordController,
                              hintText: "Password",
                              isObscure: controller.isObscureLoginPass.value,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isObscureLoginPass.value =
                                  !controller.isObscureLoginPass.value;
                                },
                                child: Icon(
                                  controller.isObscureLoginPass.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: kGreyShade1Color,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h,),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: (){
                                Get.toNamed(kSendOtpScreenRoute);
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 42.h,),
                          CustomButton(title: "Sign in", onTap: (){
                            Get.toNamed(kDashboardScreenRoute);
                          })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
