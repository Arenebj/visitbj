import 'package:flutter/material.dart';

import '../color/app_color.dart';

class AppTypography {
  static const _poppins = 'Poppins';
  final TextStyle medium =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.white);
  final TextStyle regularAg14 =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: AppColors.white);
  final TextStyle regularHug = const TextStyle(
      fontFamily: _poppins,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.detailsColors);
  final TextStyle headline = const TextStyle(
      fontFamily: _poppins,
      fontSize: 34,
      fontWeight: FontWeight.w800,
      color: AppColors.white);
  final TextStyle semiBold =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.black);
  final TextStyle cardText =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.details);
  final TextStyle regularAg16 =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle regular =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle regularBold = const TextStyle(
      fontFamily: _poppins,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: AppColors.brown);
  final TextStyle bottomLabel =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 8,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTwo);
  final TextStyle subtitle =  const TextStyle(
      fontFamily: _poppins,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.orange);


}
