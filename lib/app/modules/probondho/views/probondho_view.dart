import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/app/modules/probondho/views/probondho_list_view.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/app_images/app_images.dart';
import 'package:manhal/common/custom_widgets/custom_search_bar.dart';
import 'package:manhal/common/text_style/text_style.dart';

import '../controllers/probondho_controller.dart';

class ProbondhoView extends GetView<ProbondhoController> {
  const ProbondhoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Row(
          children: [
            Image.asset(AppImages.book,scale: 8,),
            const SizedBox(width: 5,),
             Text(AppContent.probondho,style: AppTextStyle.lipiPadmoFont()),
          ],
        ),
        elevation: 0,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomSearchBar(hintText: AppContent.searchProbodho,),
              const ProbondhoListView()
            ],
          ),
        ),
      ),
    );
  }
}
