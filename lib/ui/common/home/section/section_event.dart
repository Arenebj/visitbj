import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';

class SectionEvent extends StatelessWidget {
  final PackEvent pack;
  const SectionEvent(this.pack, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0.h),
      width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageViewSection(pack.images.first),
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.h),
                  color: AppColors.redLight,
                  child: TitleText(
                      "${pack.place} places restantes",
                      AppTypography().regularAg14.copyWith(
                          fontSize: 12.h,
                          color: AppColors.red,
                          height: 1.55.h)),
                ),
                const SpaceH(10),
                TitleText(
                    pack.title,
                    AppTypography()
                        .text
                        .copyWith(fontSize: 17.87.h, height: 1.2.h)),
                const SpaceH(10),
                SizedBox(
                  width: 247.32.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TitleText(
                          pack.point.toString(),
                          AppTypography().cardText.copyWith(
                              fontSize: 13.77.h,
                              color: AppColors.outline,
                              height: 1.2.h)),
                      const SpaceW(5),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 14.76.h,
                        itemPadding:
                             EdgeInsets.symmetric(horizontal: 4.0.h),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: AppColors.primaryOne,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SpaceW(10),
                      TitleText(
                          "(${pack.view} avis)",
                          AppTypography()
                              .regularHug
                              .copyWith(fontSize: 13.77.h, height: 1.2.h)),
                    ],
                  ),
                ),
                const SpaceH(10),
                SizedBox(
                  width: 247.32.h,
                  child: Row(
                    children: [
                      SvgPicture.asset($appAssets.svgs.calendar),
                      const SpaceW(10),
                      TitleText(
                          "${getDateStart(pack.dateStart)}.-${getDateEnd(pack.dateEnd)}"
                              .toUpperCase(),
                          AppTypography().regularAg14.copyWith(
                              fontSize: 16.85.h,
                              color: AppColors.outline,
                              height: 1.2.h)),
                    ],
                  ),
                ),
                const SpaceH(10),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: pack.price.toString(),
                            style: AppTypography()
                                .regularAg16
                                .copyWith(fontSize: 16.52.h, height: 1.2.h),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3.0.h),
                              child: Text(
                                ' FCFA ',
                                style: AppTypography()
                                    .regularAg16
                                    .copyWith(fontSize: 14.52.h, height: 1.2.h),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: '/ ',
                            style: AppTypography()
                                .regularBold
                                .copyWith(fontSize: 16.52.h, height: 1.2.h),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset($appAssets.svgs.person),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
