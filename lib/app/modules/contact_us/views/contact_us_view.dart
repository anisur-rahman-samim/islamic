import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_sizes/app_sizes.dart';

import '../../../../common/text_style/text_style.dart';
import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  const ContactUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title:  Text(AppContent.contactUs,style: AppTextStyle.lipiPadmoFont()),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 6,),
             ListTile(
              leading: const Icon(Icons.location_on_rounded,color: AppColors.black,),
              title: Text(AppContent.address,
                style: AppTextStyle.solaimanFont().copyWith(fontSize: AppSizes.fontLarge),
              )
            ),
            const SizedBox(height: 6,),
             ListTile(
                leading: const Icon(Icons.call,color: AppColors.black,),
                title: Text(AppContent.phone,style: AppTextStyle.solaimanFont())
            ),
            const SizedBox(height: 6,),
             ListTile(
                leading: const Icon(Icons.mail_outline,color: AppColors.black,),
                title: Text(AppContent.mail,style: AppTextStyle.solaimanFont())
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(AppContent.sendUs,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.mainColor)),
                   const SizedBox(height: 14,),
                  customTextField(title: AppContent.name,height: 50),
                  const SizedBox(height: 10,),
                  customTextField(title: AppContent.email,height: 50),
                  const SizedBox(height: 10,),
                  customTextField(title: AppContent.sms,height: 250,line: 11),
                  const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 64,
                        width: 132,
                        decoration: BoxDecoration(
                          color: AppColors.lightWhite,
                          borderRadius: BorderRadius.circular(4),
                          gradient: const LinearGradient(
                            colors: [AppColors.secondColor, AppColors.mainColor],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child:  Center(child: Text(AppContent.send,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.white)),)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Container customTextField({required String title, required double height, int? line}) {
    return Container(
                height: height,
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.lightWhite,
                  borderRadius: BorderRadius.circular(4),
                ),
                child:  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: TextField(
                        maxLines: line??1,
                        decoration: InputDecoration(
                          hintText: title,
                          hintStyle: AppTextStyle.solaimanFont().copyWith(color: AppColors.gray),
                           border: InputBorder.none,
                        ),
                      ),
                    ))
              );
  }
}
