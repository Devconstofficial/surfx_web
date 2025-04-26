import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../custom_widgets/custom_button.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';
import 'controller/forgot_pass_controller.dart';

class VerifyOtpScreen extends GetView<ForgotPassController> {
  const VerifyOtpScreen({super.key});

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
                          Text("Verify OTP",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 34.sp),),
                          SizedBox(height: 10.h,),
                          Text("Please enter 5 digit OTP to confirm Verification!",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w500,fontSize: 19.sp),),
                          SizedBox(height: 42.h,),
                          OTPTextField(
                            // controller: controller.otpController,
                            length: 4,
                            width: MediaQuery.of(context).size.width,
                            textFieldAlignment: MainAxisAlignment.spaceBetween,
                            fieldWidth: 85,
                            otpFieldStyle: OtpFieldStyle(focusBorderColor: kPrimaryColor,backgroundColor: kWhiteColor),
                            fieldStyle: FieldStyle.box,
                            contentPadding: EdgeInsets.all(20),
                            outlineBorderRadius: 8,
                            style: const TextStyle(fontSize: 17),
                            onChanged: (pin){

                            },
                            onCompleted: (pin) async {

                            },
                          ),
                          SizedBox(height: 42.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Receive OTP?",style: AppStyles.blackTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 19.sp),),
                              InkWell(
                                onTap: (){},
                                  child: Text(" Resend!",style: AppStyles.greyTextStyle().copyWith(fontWeight: FontWeight.w700,fontSize: 19.sp),)),
                            ],
                          ),
                          SizedBox(height: 54.h,),
                          CustomButton(title: "Verify OTP", onTap: (){
                            Get.toNamed(kSetNewPassScreenRoute);
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
