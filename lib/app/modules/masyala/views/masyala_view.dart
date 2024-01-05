import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/app/modules/masyala/views/masyala_list_view.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_images/app_images.dart';
import 'package:manhal/common/custom_widgets/custom_search_bar.dart';
import 'package:manhal/common/text_style/text_style.dart';

import '../controllers/masyala_controller.dart';

class MasyalaView extends GetView<MasyalaController> {
  const MasyalaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Row(
          children: [
            Image.asset(AppImages.quran,scale: 8,),
             Text(AppContent.masyala,style: AppTextStyle.lipiPadmoFont()),
          ],
        ),
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomSearchBar(hintText: AppContent.searchMasyala,),
              const MasyalaList()
            ],
          ),
        ),
      ),
    );
  }
}


