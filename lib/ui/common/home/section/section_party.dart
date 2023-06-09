import 'package:visitbj/export.dart';

class SectionParty extends StatelessWidget {
  final String titre;
  final Function()? onPressed;
  const SectionParty(this.titre, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(
              titre,
              AppTypography().semiBold.copyWith(
                  color: AppColors.details,
                  //  height: 1.2.h,
                  fontSize: 20)),
          TextButton(
            onPressed: onPressed,
            child: Row(
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
        ],
      ),
    );
  }
}
