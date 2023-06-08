import 'package:visitbj/export.dart';
import 'package:visitbj/ui/common/home/section/section_event.dart';
import 'package:visitbj/ui/common/home/section/section_party.dart';
import 'package:visitbj/ui/common/home/section/section_sejour.dart';
import 'package:visitbj/ui/common/home/section/section_welcome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHome(),
      backgroundColor: AppColors.white,
      body: bodyHome(context),
    );
  }
}

appHome() {
  return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    actions: [
      ImageAsset($appAssets.imgs.userImage, 35.43.h, 35.43.w),
      const SpaceW(10),
      Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          ImageSvg($appAssets.svgs.panier, 20.h, 20.w),
          Positioned(
              right: 0,
              top: 5.h,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  1.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ],
      ),
      const SpaceW(10),
      ImageSvg($appAssets.svgs.notification, 20.h, 20.w),
      const SpaceW(10),
    ],
  );
}

Widget bodyHome(BuildContext context) {
  return ListView(
    children: [
      Padding(
        padding:
            // EdgeInsets.only(left: 15.w, right: 15.w, top: 56.h, bottom: 31.h),
            EdgeInsets.all(15.h),
        child:
            const WelcomeSection("Bienvenue!", "assets/images/userImage.png"),
      ),
      Container(
        height: 224.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: AssetImage("assets/images/homeImage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: TitleText("Découvrez les merveilles du Bénin",
                AppTypography().headline.copyWith(height: 1.2.h)),
          ),
        ),
      ),
      const SectionParty("Catégories de séjours", null),
      Consumer<CategoryProvider>(
        builder: (context, categoriesDivideList, _) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Container(
                  width: 166.w,
                  height: 149.4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.74286.h),
                    ),
                    shape: BoxShape.rectangle,
                    color: AppColors.getColorBg(categoriesDivideList
                        .categoriesDivideList[index].label),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(categoriesDivideList
                          .categoriesDivideList[index].img),
                      TitleText(
                          categoriesDivideList
                              .categoriesDivideList[index].label,
                          AppTypography().cardText.copyWith(
                              color: AppColors.getColor(categoriesDivideList
                                  .categoriesDivideList[index].img)))
                    ],
                  ),
                );
              }),
            ),
          );
        },
      ),
      Consumer<CategoryProvider>(
        builder: (context, categoriesDivideList, _) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Container(
                  width: 166.w,
                  height: 149.4.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.getColorBg(categoriesDivideList
                        .categoriesDivideList[index + 2].label),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(categoriesDivideList
                          .categoriesDivideList[index + 2].img),
                      TitleText(
                          categoriesDivideList
                              .categoriesDivideList[index + 2].label,
                          AppTypography().cardText.copyWith(
                              color: AppColors.getColor(categoriesDivideList
                                  .categoriesDivideList[index + 2].label)))
                    ],
                  ),
                );
              }),
            ),
          );
        },
      ),
      const SectionParty("Evènements", null),
      Container(
        padding: const EdgeInsets.all(0),
        height: 400.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Colors.white,
            ],
            stops: [0.0191, 0.8325],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(95.03),
          ),
        ),
        child: Consumer<PackEventProvider>(
          builder: (context, packs, _) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: packs.packs.length,
              itemBuilder: (context, index) {
                return SectionEvent(packs.packs[index]);
              },
            );
          },
        ),
      ),
      const SectionParty("Séjours les plus achétés", null),
      Container(
        padding: const EdgeInsets.all(0),
        height: 500.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 0),
              Colors.white,
            ],
            stops: [0.0191, 0.8325],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(95.03),
          ),
        ),
        child: Consumer<PackEventProvider>(
          builder: (context, packs, _) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: packs.packs.length,
              itemBuilder: (context, index) {
                return SectionSejour(packs.packs[index]);
              },
            );
          },
        ),
      ),
    ],
  );
}
