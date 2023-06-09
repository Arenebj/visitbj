import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
  static const Color primaryOne = Color(0xffFFB923);
  static const Color primaryTwo = Color(0xffFF8800);
  static const Color green = Color(0xff168039);
  static const Color nature = Color(0xff168039);
  static const Color cartNote = Color(0xff96ED89);
  static const Color natureBg = Color(0xffF2FFF2);
  static const Color safari = Color(0xffB06005);
  static const Color safariBg = Color(0xffFFF3E6);
  static const Color aventure = Color(0xffFFB923);
  static const Color aventureBg = Color(0xffFFFBF4);
  static const Color culture = Color(0xff2388FF);
  static const Color cultureBg = Color(0xffE4F5FF);
  static const Color greenTint = Color(0xffF9FFF9);
  static const Color greenTintTwo = Color(0xffBEEEB7);
  static const Color greenThree = Color(0xffE4FBE1);
  static const Color primaryTintLight = Color(0xffFFF3E6);
  static const Color detailsColors = Color(0xff868383);
  static const Color stroke = Color(0xffC7C6CA);
  static const Color details = Color(0xff46474A);
  static const Color red = Color(0xffE30B00);
  static const Color redLight = Color(0xffFDF3F2);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color brown = Color(0xff43474E);
  static const Color outline = Color(0xff8E9199);

  static getColor(String libelle) {
    switch (libelle) {
      case "Nature":
        return AppColors.nature;
      case "Safari":
        return AppColors.safari;
      case "Aventure":
        return AppColors.aventure;
      case "Culture":
        return AppColors.culture;
      default:
    }
  }

  static getColorBg(String libelle) {
    switch (libelle) {
      case "Nature":
        return AppColors.natureBg;

      case "Safari":
        return AppColors.safariBg;

      case "Aventure":
        return AppColors.aventureBg;

      case "Culture":
        return AppColors.cultureBg;

      default:
    }
  }
}