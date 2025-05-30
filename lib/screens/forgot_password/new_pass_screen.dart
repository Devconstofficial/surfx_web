import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:surfx_web/screens/forgot_password/controller/forgot_pass_controller.dart';
import 'package:surfx_web/utils/app_strings.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';

class SetNewPassScreen extends GetView<ForgotPassController> {
  const SetNewPassScreen({super.key});

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
                          SizedBox(height: 123.h,),
                          Text("Create New Password",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 30.sp),),
                          SizedBox(height: 10.h,),
                          Text("Please enter New password here!",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 18.sp),),
                          SizedBox(height: 27.h,),
                          Text("Password",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          SizedBox(height: 3.h,),
                          Obx(
                                () => CustomTextField(
                              height: 57.h,
                              controller: controller.passwordController,
                              hintText: "Password",
                              isObscure: controller.isObscurePass.value,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isObscurePass.value =
                                  !controller.isObscurePass.value;
                                },
                                child: Icon(
                                  controller.isObscurePass.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: kGreyShade1Color,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 26.h,),
                          Text("Confirm Password",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 12.sp),),
                          SizedBox(height: 3.h,),
                          Obx(
                                () => CustomTextField(
                              height: 57.h,
                              controller: controller.confirmPasswordController,
                              hintText: "Confirm Password",
                              isObscure: controller.isObscureNewPass.value,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isObscureNewPass.value =
                                  !controller.isObscureNewPass.value;
                                },
                                child: Icon(
                                  controller.isObscureNewPass.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: kGreyShade1Color,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 72.h,),
                          CustomButton(title: "Update Password", onTap: (){
                            Get.offAllNamed(kLoginScreenRoute);
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
