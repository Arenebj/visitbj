import 'dart:core';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';
import '../../../core/domain/locales/categories.dart';
class PackCards extends StatelessWidget {
  const PackCards({super.key, required this.category, this.width, required this.index, required this.activeIndex, });
  final Category category;
  final double?  width;
  final int index;
 final  int activeIndex;
  @override
  Widget build(BuildContext context) {
     // Set the index of the active element

    return Container(
      padding: const EdgeInsets.all(5),
      width: width ??74,
      decoration: BoxDecoration(
        color:index ==activeIndex?category.colors?.withOpacity(0.2):AppColors.neutral,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(category.img,color:index ==activeIndex?category.colors:AppColors.categorie ,),
          const SpaceH(8),
          Expanded(child:
          AutoSizeText(category.label,style: AppTypography().subtitle.copyWith(color: index ==activeIndex?category.colors:AppColors.categorie ),))
        ],
      ),
    );
  }
}
