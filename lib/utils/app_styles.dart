import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle blackTextStyle() => GoogleFonts.raleway(
    fontSize: 26.sp,
    fontWeight: FontWeight.w500,
    color: kBlackTextColor,
  );
  static TextStyle whiteTextStyle() => GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kWhiteColor,
  );
  static TextStyle greyTextStyle() => GoogleFonts.raleway(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: kGreyColor,
  );
}

double getWidth(double pixelValue) {
  double baseScreenWidth = 375.0;
  return (pixelValue / baseScreenWidth) * 100.w;
}

double getHeight(double pixelValue) {
  double baseScreenHeight = 812.0;
  return (pixelValue / baseScreenHeight) * 100.h;
}
