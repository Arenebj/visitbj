import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/app_color.dart';

class AppTypography {
  static const _poppins = 'Poppins';
  final TextStyle medium = TextStyle(
      fontFamily: _poppins,
      fontSize: 20.h,
      fontWeight: FontWeight.w500,
      color: AppColors.white);
  final TextStyle regularAg14 = TextStyle(
      fontFamily: _poppins,
      fontSize: 14.h,
      fontWeight: FontWeight.w300,
      color: AppColors.white);
  final TextStyle regularHug = TextStyle(
      fontFamily: _poppins,
      fontSize: 14.h,
      fontWeight: FontWeight.w400,
      color: AppColors.detailsColors);
  final TextStyle headline = TextStyle(
      fontFamily: _poppins,
      fontSize: 34.h,
      fontWeight: FontWeight.w800,
      color: AppColors.white);
  final TextStyle semiBold = TextStyle(
      fontFamily: _poppins,
      fontSize: 24.h,
      fontWeight: FontWeight.w600,
      color: AppColors.black);
  final TextStyle cardText = TextStyle(
      fontFamily: _poppins,
      fontSize: 24.h,
      fontWeight: FontWeight.w500,
      color: AppColors.details);
  final TextStyle regularAg16 = TextStyle(
      fontFamily: _poppins,
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle regular = TextStyle(
      fontFamily: _poppins,
      fontSize: 16.h,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle regularBold = TextStyle(
      fontFamily: _poppins,
      fontSize: 16.h,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTwo);
  final TextStyle text = TextStyle(
      fontFamily: _poppins,
      fontSize: 17.h,
      fontWeight: FontWeight.w600,
      color: AppColors.brown);
  final TextStyle bottomLabel = TextStyle(
      fontFamily: _poppins,
      fontSize: 8.h,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTwo);


}
