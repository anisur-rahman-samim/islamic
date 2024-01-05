import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_sizes/app_sizes.dart';
import 'package:manhal/common/text_style/text_style.dart';

class MasAla extends StatelessWidget {
  const MasAla({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return Padding(
            padding:  const EdgeInsets.symmetric(vertical: AppSizes.paddingExtraSmall ),
            child: InkWell(
             // onTap: ()=> Get.toNamed(Routes.CONTACT_US),
              child: Container(
                height: 190,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: AppColors.lightMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(4))
                ),
                child:  Padding(
                  padding:  const EdgeInsets.all( AppSizes.paddingLarge),
                  child: Column(
                    children: [
                       Row(
                        children: [
                          const Icon(Icons.alarm,color: AppColors.dateTitleColor, size:  AppSizes.fontLarge,),
                          const SizedBox(width: 5,),
                          Text(AppContent.date,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.dateTitleColor),)
                        ],
                      ),
                       Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(AppContent.masyalaText,
                          style: AppTextStyle.solaimanFont().copyWith(color: AppColors.white,fontSize: AppSizes.fontExtraLarge),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(AppContent.manhal,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.manhalColor)),
                          Container(
                            height: 45,
                            width: 117,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child:  Center(child:  Text(AppContent.readMore,style: AppTextStyle.solaimanFont().copyWith(color: AppColors.lightMainColor)),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}

