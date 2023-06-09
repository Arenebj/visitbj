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
      backgroundColor: Colors.white,
      body: bodyHome(context),
    );
  }
}

Widget bodyHome(BuildContext context) {
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 56.h, bottom: 46.h),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Container(
                  width: 166.w,
                  height: 149.4.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.74286),
                    ),
                    shape: BoxShape.rectangle,
                    color: AppColors.getColorBg(categoriesDivideList
                        .categoriesDivideList[index].libelle),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(categoriesDivideList
                          .categoriesDivideList[index].image),
                      TitleText(
                          categoriesDivideList
                              .categoriesDivideList[index].libelle,
                          AppTypography().cardText.copyWith(
                              color: AppColors.getColor(categoriesDivideList
                                  .categoriesDivideList[index].libelle)))
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(2, (index) {
                return Container(
                  width: 166.w,
                  height: 149.4.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.getColorBg(categoriesDivideList
                        .categoriesDivideList[index + 2].libelle),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(categoriesDivideList
                          .categoriesDivideList[index + 2].image),
                      TitleText(
                          categoriesDivideList
                              .categoriesDivideList[index + 2].libelle,
                          AppTypography().cardText.copyWith(
                              color: AppColors.getColor(categoriesDivideList
                                  .categoriesDivideList[index + 2].libelle)))
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
