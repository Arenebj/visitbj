import 'package:flutter/material.dart';

import '../color/app_color.dart';

class AppTypography {
  static const _roboto = 'Poppins';
  final TextStyle medium =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.white);
  final TextStyle regularOne =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: AppColors.white);
  final TextStyle headline =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 34,
      fontWeight: FontWeight.w800,
      color: AppColors.white);
  final TextStyle semiBold =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.black);
  final TextStyle cardText =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppColors.details);
  final TextStyle viewText =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle regular =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTwo);
  final TextStyle text =  const TextStyle(
      fontFamily: _roboto,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: AppColors.brown);


}
