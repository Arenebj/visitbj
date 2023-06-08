import 'package:visitbj/export.dart';

import '../../../ressources/theme/color/app_color.dart';
import '../app_inkwell.dart';
class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key, required this.title,  this.backgroundColor, this.onTap}) : super(key: key);
  final String title;
  final Color? backgroundColor;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: AppInkwell(
        onTap: onTap,
        child:  const Icon(Icons.arrow_back_ios,color:AppColors.brown,),
      ),
      centerTitle: false,
      title: Text(
        title,
        style: AppTypography().semiBold.copyWith(color: AppColors.greyScale),
        textAlign: TextAlign.center,
      ),
      backgroundColor: backgroundColor?? AppColors.white,

    );


  }
}
