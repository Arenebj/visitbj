import 'package:intl/intl.dart';
import 'package:visitbj/export.dart';
import 'package:visitbj/utils/constants/section.dart';

class TitleText extends StatelessWidget {
  final String title;
  final TextStyle style;
  const TitleText(this.title, this.style, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}

class ImageLoad extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const ImageLoad(this.image, this.height, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height,
      width: width,
      image: AssetImage(image),
    );
  }
}

class WelcomeSection extends StatelessWidget {
  final String title;
  final String image;
  const WelcomeSection(this.title, this.image, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(
          title,
          AppTypography().semiBold.copyWith(fontSize: 28),
        ),
        ImageLoad(image, 69.h, 69.w)
      ],
    );
  }
}

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

class SectionEvent extends StatelessWidget {
  final PackEvent pack;
  const SectionEvent(this.pack, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageViewSection(pack.images.first),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
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
                              color: AppColors.darkOutline,
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
                            const EdgeInsets.symmetric(horizontal: 4.0),
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
                          "22 Juillet-26 Juillet",
                          AppTypography().regularAg14.copyWith(
                              fontSize: 16.85.h,
                              color: AppColors.lightOutline,
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
                              padding: const EdgeInsets.only(bottom: 3.0),
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

class SectionSejour extends StatelessWidget {
  final PackEvent pack;
  const SectionSejour(this.pack, {super.key});

  @override
  Widget build(BuildContext context) {
    DateTime dateTimeStart = DateTime.parse(pack.dateStart);
    DateTime dateTimeEnd = DateTime.parse(pack.dateEnd);
    final formattedDateStart =
        DateFormat('d MMMM', 'fr_FR').format(dateTimeStart);
    final formattedDateEnd = DateFormat('d MMMM', 'fr_FR').format(dateTimeEnd);
    return Container(
      padding: const EdgeInsets.all(10),
      width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageViewSection(pack.images.first),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10.h),
                  color: AppColors.greenTint,
                  child: TitleText(
                      "Populaire en ce moment",
                      AppTypography().regularAg14.copyWith(
                          fontSize: 12.73.h,
                          color: AppColors.green,
                          height: 1.2.h)),
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
                              color: AppColors.darkOutline,
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
                            const EdgeInsets.symmetric(horizontal: 4.0),
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
                          "${getDateStart(pack.dateStart)}-${getDateEnd(pack.dateEnd)}",
                          AppTypography().regularAg14.copyWith(
                              fontSize: 16.85.h,
                              color: AppColors.lightOutline,
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
                            text: "à partir de ",
                            style: AppTypography().regularHug.copyWith(
                                fontSize: 16.52.h,
                                color: AppColors.primaryTwo,
                                height: 1.2.h),
                          ),
                          TextSpan(
                            text: pack.price.toString(),
                            style: AppTypography()
                                .regularAg16
                                .copyWith(fontSize: 16.52.h, height: 1.2.h),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 3.0),
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

class PageViewSection extends StatelessWidget {
  const PageViewSection(this.image, {super.key});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 2),
      width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
      height: 208.04.h,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          shape: BoxShape.rectangle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              child: SvgPicture.asset($appAssets.svgs.coeur),
              onPressed: () async {},
            ),
          ),
        ],
      ),
    );
  }
}
/* class PageViewSection extends StatelessWidget {
  const PageViewSection(this.images, {super.key});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    //final packs = Provider.of<PackEventProvider>(context);
    final pageView = Provider.of<DashboardProvider>(context);

    return PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: pageView.pageController,
        onPageChanged: (page) {
          pageView.setActivePage(page);
          //activePage = page;
        },
        itemBuilder: (context, pagePosition) {
          return
           Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            margin: const EdgeInsets.only(left: 2),
            // width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
            // height: 208.04.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[pagePosition])),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                shape: BoxShape.rectangle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                      size: 26.h,
                      color: AppColors.white,
                    ),
                    onPressed: () async {},
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, pageView.activePage)),
              ],
            ),
          );
        });
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(2),
        width: currentIndex == index ? 20 : 12,
        height: currentIndex == index ? 10 : 8,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xffFF8473)
                : const Color(0xffFFC0B8),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            shape: BoxShape.rectangle),
      );
    });
  }
} */
