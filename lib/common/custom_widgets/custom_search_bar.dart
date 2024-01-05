import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manhal/common/app_colors/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  String hintText;
   CustomSearchBar({
    super.key,
     required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 13),
      height: 45,
      width: Get.width,
      child: Row(
        children: [
          Container(
            width: Get.width / 1.26,
            decoration: const BoxDecoration(
                color: AppColors.deepMainColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4))
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: const TextStyle(color: AppColors.searchHintColor, fontFamily: 'SolaimanLipi',),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.secondColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(4), topRight: Radius.circular(4))
              ),
              child: const Center(child: Icon(Icons.search,color: AppColors.white,),),
            ),
          ),
        ],
      ),
    );
  }
}
