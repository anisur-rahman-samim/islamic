import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/app/routes/app_pages.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_images/app_images.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () async {
      Get.toNamed(Routes.HOME);
    });
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body:  Center(
        child: Image.asset(AppImages.logo,scale: 3,)
      ),
    );
  }
}
