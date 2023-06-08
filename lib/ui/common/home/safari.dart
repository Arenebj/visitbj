import 'dart:async';
import 'dart:ui';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';
import '../../../core/domain/locales/categories.dart';
import '../../../core/domain/locales/pack.dart';
class CustomCards extends StatefulWidget {
  const  CustomCards({super.key, required this.pack});
  final Pack pack;
  @override
  State<CustomCards> createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
   PageController _pageController = PageController();
  int _currentPage = 0;
   late Timer _timer;
   final int _pageCount = allImage.length;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _stopAutoScroll();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (_currentPage < _pageCount - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  void _stopAutoScroll() {
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 342,
      padding: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 203,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.pack.img.length,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(26.03),topLeft:Radius.circular(26.03), ),
                      child: SizedBox(
                        height: 203,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          widget.pack.img[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                ),

              ),
              const Positioned(
                right: 16,
                  top: 14,
                  child: InkWell(child: Icon(Icons.favorite_outline,color: AppColors.white,),)
              ),
              Positioned(
                bottom: 20,
                  child: SmoothPageIndicator(
                    count: allImage.length,
                    controller: _pageController,
                    effect:   const WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 15,
                        dotColor: AppColors.white,
                        activeDotColor: AppColors.primaryOne,
                        strokeWidth: 1,
                        paintStyle: PaintingStyle.fill),
                    onDotClicked: (index) => _pageController.animateToPage(index,
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        curve: Curves.easeIn),
                  ),

              ),

            ],
          ),
          const SpaceH(15),
          widget.pack.popular? Container(
            width:167 ,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                color: AppColors.natureBg.withOpacity(0.2),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Text("Populaire en ce moment",style: AppTypography().regularAg14.copyWith(fontSize: 12,color: AppColors.natureBg),),

          ):const SizedBox.shrink(),
          const SpaceH(14),
          Text(widget.pack.title,style: AppTypography().semiBold.copyWith(fontSize: 20,color: AppColors.brown),),
          const SpaceH(10),
          Row(
            children: [
              Text(widget.pack.rate,style: AppTypography().subtitle.copyWith(color: AppColors.rate,fontSize: 16),),
              const Icon(Icons.star,color: AppColors.primaryOne,size: 20,),
              const Icon(Icons.star,color: AppColors.primaryOne,size: 20,),
              const Icon(Icons.star,color: AppColors.primaryOne,size: 20,),
              const Icon(Icons.star,color: AppColors.primaryOne,size: 20,),
              const Icon(Icons.star,color: AppColors.primaryOne,size: 20,),
              Text("(${widget.pack.avis} avis)",style: AppTypography().subtitle.copyWith(color: AppColors.rate,fontWeight: FontWeight.w400),),


            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset($appAssets.svgs.calendar,height: 22,width: 22,),
                  const SpaceW(7),
                  Text(widget.pack.dateInterval,style: AppTypography().regularAg14.copyWith(color: AppColors.outlineVariant),),

                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time,size: 14,),
                  const SpaceW(11),
                  Text('${widget.pack.nbreDate} jours',style: AppTypography().regularAg14.copyWith(color: AppColors.outlineVariant),),
                ],
              ),


            ],
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "à partir de ${widget.pack.price}",style: AppTypography().regular,
                    children: [
                      const TextSpan(
                        text: "FCFA",
                        style: TextStyle(
                          fontFeatures: [
                            FontFeature.enable('sups'),
                          ],
                        ),
                      ),
                      TextSpan(text: "/",style: AppTypography().regular ),

                    ]

                ),
              ),
              const Icon(Icons.person_rounded,color: AppColors.primaryTwo,)
            ],
          ),
        ],
      ),
    );
  }
}
