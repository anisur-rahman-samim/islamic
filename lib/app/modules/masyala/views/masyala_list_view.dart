import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/app/routes/app_pages.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_sizes/app_sizes.dart';
import 'package:manhal/common/text_style/text_style.dart';
class MasyalaList extends StatelessWidget {
  const MasyalaList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 16,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: InkWell(
              onTap: ()=> Get.toNamed(Routes.MAS_ALA_DETAILS),
              child: Container(
                height:60,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: AppColors.lightMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(4))
                ),
                child:  ListTile(
                  trailing: Text("৪",style: AppTextStyle.solaimanFont().copyWith(color: AppColors.white,fontSize: AppSizes.fontExtraLarge),),
                  leading: const Icon(Icons.arrow_forward_ios,color: AppColors.white,),
                  title: Text(AppContent.sortMasyalaText,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.white,fontSize: AppSizes.fontExtraLarge),),
                ),
              ),
            ),
          );
        }
    );
  }
}