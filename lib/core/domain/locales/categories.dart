import 'package:visitbj/ressources/theme/app_theme.dart';
import '../../../export.dart';

class Category{
  final String img;
  final String label;
  final Color? colors;

  Category(this.img, this.label, this.colors);
}
List<Category>allCategory=[
  Category($appAssets.svgs.categorieImage, "Safari", AppColors.orange),
  Category($appAssets.svgs.nature, "Nature", AppColors.natureBg),
  Category($appAssets.svgs.culture, "Culture", AppColors.cultureBg),
  Category($appAssets.svgs.aventure, "Aventure", AppColors.aventureBg),
  Category($appAssets.svgs.family, "Famille", AppColors.familyBg),
  Category($appAssets.svgs.detente, "Détente", AppColors.detenteBg),
  Category($appAssets.svgs.balnenaire, "Balnéaire", AppColors.balneaireBg),
];

List<String>allImage=[
  $appAssets.imgs.antilope,
  $appAssets.imgs.antilope,
  $appAssets.imgs.antilope,
];