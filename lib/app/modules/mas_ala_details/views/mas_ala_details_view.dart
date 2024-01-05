import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_content/app_content.dart';
import 'package:manhal/common/custom_widgets/custom_search_bar.dart';
import 'package:manhal/common/text_style/text_style.dart';

import '../controllers/mas_ala_details_controller.dart';
import 'mas_ala_view.dart';

class MasAlaDetailsView extends GetView<MasAlaDetailsController> {
  const MasAlaDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title:  Text(AppContent.sortMasyalaText, style: AppTextStyle.lipiPadmoFont()),
        elevation: 0,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(hintText: AppContent.searchMasyala,),
              const MasAla()
            ],
          ),
        ),
      )
    );
  }
}

