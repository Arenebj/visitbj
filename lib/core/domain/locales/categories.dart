import 'package:visitbj/ressources/theme/app_theme.dart';
import '../../../export.dart';

class Category{
  int? id ;
  final String img;
  final String label;
  final Color? colors;

  Category({required this.img, required this.label, this.colors,this.id});
}
List<Category>allCategory=[
  Category(img:$appAssets.svgs.categorieImage, label:"Safari", colors:AppColors.orange,),
  Category(img:$appAssets.svgs.nature, label:"Nature", colors:AppColors.natureBg),
  Category(img:$appAssets.svgs.culture, label:"Culture", colors:AppColors.cultureBg),
  Category(img:$appAssets.svgs.aventure,label: "Aventure", colors:AppColors.aventureBg),
  Category(img:$appAssets.svgs.family, label:"Famille", colors:AppColors.familyBg),
  Category(img:$appAssets.svgs.detente, label:"Détente", colors:AppColors.detenteBg),
  Category(img:$appAssets.svgs.balnenaire,label: "Balnéaire",colors: AppColors.balneaireBg),
];

List<String>allImage=[
  $appAssets.imgs.antilope,
  $appAssets.imgs.antilope,
  $appAssets.imgs.antilope,
];