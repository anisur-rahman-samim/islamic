import 'package:flutter/material.dart';
import 'package:manhal/common/app_colors/app_colors.dart';
import 'package:manhal/common/app_sizes/app_sizes.dart';

const String solaimanLipi = 'SolaimanLipi';
const String lipiPadmo = 'Lipi Padmo';


class AppTextStyle {
  static TextStyle solaimanFont() {
    return const TextStyle(
        color: AppColors.black,
        fontFamily: solaimanLipi,
        fontSize: AppSizes.fontLarge);
  }

  static TextStyle lipiPadmoFont() {
    return const TextStyle(
        color: AppColors.white,
        fontFamily: lipiPadmo,
        fontSize: AppSizes.fontExtraLarge);
  }
}