import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/app/routes/app_pages.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_images/app_images.dart';
import 'package:manhal/common/text_style/text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          AppImages.homeBg,
          width: Get.width,
          height: Get.height,
        ),
        Positioned(
            top: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppImages.top,
                  width: Get.width,
                ),
                Positioned(
                  bottom: -50,
                  right: 100,
                  left: 100,
                  child: Image.asset(
                    AppImages.appIcon,
                    fit: BoxFit.fill,
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            )),
        Positioned(
          bottom: 200,
            left: 40,
            right: 40,
            child: Row(
          children: [
            InkWell(
            onTap:()=> Get.toNamed(Routes.MASYALA),
              child: Image.asset(
                AppImages.masayala,
                height: 130,
                width: 130,
              ),
            ),
            const SizedBox(width: 50,),
            InkWell(
              onTap:()=> Get.toNamed(Routes.PROBONDHO),
              child: Image.asset(
                AppImages.grontho,
                height: 130,
                width: 130,
              ),
            ),
          ],
        )),
        Positioned(
            bottom: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  AppImages.bottom,
                  width: Get.width,
                ),
                Positioned(
                  top: -30,
                  left: 0,
                  right: 0,
                  child: InkWell(
                    onTap: (){
                      Get.bottomSheet(
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              AppImages.sheet,
                              width: Get.width,
                              //height: 500,
                            ),
                            Positioned(
                              top: -30,
                              left: 0,
                              right: 0,
                              child: InkWell(
                                onTap: ()=> Get.back(),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: AppColors.secondColor,
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: AppColors.white,
                                    child: Image.asset(
                                      AppImages.cross,
                                      fit: BoxFit.fill,
                                      height: 28,
                                      width: 28,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                             Positioned(
                              top: 60,
                              left: 120,
                              child: Column(
                                children: [

                                   Row(
                                    children: [
                                      const Icon(Icons.message_rounded,color: AppColors.white,),
                                      const SizedBox(width: 10,),
                                      Text(AppContent.aboutUs,
                                        style: AppTextStyle.lipiPadmoFont().copyWith(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30,),
                                  InkWell(
                                    onTap: ()=> Get.offNamed(Routes.CONTACT_US),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.person_2,color: AppColors.white,),
                                        const SizedBox(width: 10,),
                                        Text(AppContent.contactUs, style: AppTextStyle.lipiPadmoFont().copyWith(fontSize: 20),),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                   Row(
                                    children: [
                                      const Icon(Icons.share,color: AppColors.white,),
                                      const SizedBox(width: 10,),
                                      Text(AppContent.shareIt, style: AppTextStyle.lipiPadmoFont().copyWith(fontSize: 20),),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: AppColors.secondColor,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: AppColors.white,
                        child: Image.asset(
                          AppImages.dash,
                          fit: BoxFit.fill,
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ],
    ));
  }
}