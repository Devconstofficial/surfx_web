import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';
import 'controller/sidemenu_controller.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final menuController = Get.put(SideMenuController());

  @override
  Widget build(BuildContext context) {
    // bool isTablet = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: kWhiteColor,
      shape: Border(right: BorderSide(color: kBorderColor)),
      width: 197,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 173,
              child: DrawerHeader(
                child: SizedBox(
                    height: 40,
                    width: 187,
                    child: Center(
                      child: Image  .asset(
                        kLogo,
                        fit: BoxFit.contain,
                      ),)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(0);
                              Get.toNamed(kDashboardScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 49,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 49,
                                        decoration: BoxDecoration(
                                          color: menuController.selectedIndex.value == 0 ? kGreyShade1Color : kWhiteColor,
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kUserIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 0 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "User",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 0
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: 16,
                                                  fontWeight: FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 49,
                                    width: 5,
                                    color: menuController.selectedIndex.value == 0 ? kPrimaryColor : kWhiteColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Obx(() {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              menuController.onItemTapped(1);
                              Get.toNamed(kListingScreenRoute);
                            },
                            child: SizedBox(
                              width: width,
                              height: 49,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        height: 49,
                                        decoration: BoxDecoration(
                                          color: menuController.selectedIndex.value == 1 ? kGreyShade1Color : kWhiteColor,
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only( left: 24),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                kDashboardIcon,
                                                height: 26,
                                                width: 26,
                                                colorFilter: ColorFilter.mode(
                                                  menuController.selectedIndex.value == 1 ? kWhiteColor : kBlackColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                              Text(
                                                "Listings",
                                                style: AppStyles.blackTextStyle().copyWith(
                                                    color: menuController.selectedIndex.value == 1
                                                        ? kWhiteColor
                                                        : kBlackTextColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 49,
                                    width: 5,
                                    color: menuController.selectedIndex.value == 1 ? kSecondaryColor : kWhiteColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 35),
              child: Obx(() {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      menuController.onItemTapped(2);
                      Get.offAllNamed(kLoginScreenRoute);
                    },
                    child: SizedBox(
                      width: width,
                      height: 49,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 49,
                                decoration: BoxDecoration(
                                  color: menuController.selectedIndex.value == 2 ? kGreyShade1Color : kWhiteColor,
                                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only( left: 24),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        kLogoutIcon,
                                        height: 22,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          kGreyShade1Color,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                                      Text(
                                        "Logout",
                                        style: AppStyles.blackTextStyle().copyWith(
                                            color: menuController.selectedIndex.value == 2
                                                ? kWhiteColor
                                                : kGreyShade1Color,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Container(
                            height: 49,
                            width: 5,
                            color: menuController.selectedIndex.value == 8 ? kSecondaryColor : kWhiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}