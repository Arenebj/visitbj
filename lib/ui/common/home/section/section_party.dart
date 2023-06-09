import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';

class SectionParty extends StatelessWidget {
  final String titre;
  final Function()? onPressed;
  const SectionParty(this.titre, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TitleText(
                titre,
                AppTypography().semiBold.copyWith(
                    color: AppColors.details,
                    //  height: 1.2.h,
                    fontSize: 20.h)),
          ),
          ButtonTheme(
            padding: EdgeInsets.zero, // Supprimer le padding
            minWidth: 0, // Supprimer le minWidth
            height: 0,
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.zero), // Supprimer le padding
                minimumSize: MaterialStateProperty.all(
                    Size.zero), // Supprimer la taille minimale
                tapTargetSize: MaterialTapTargetSize
                    .shrinkWrap, // Supprimer la taille du touch target
                visualDensity:
                    VisualDensity.compact, // Réduire la densité visuelle
              ),
              onPressed: onPressed,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TitleText("Tout voir",
                      AppTypography().regular.copyWith(letterSpacing: 0.1.w)),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: AppColors.primaryTwo,
                    size: 22.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
