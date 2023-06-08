import 'dart:async';

import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';

import 'onBoardingElement.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    if(_activePage == 0){
      Timer(Duration(seconds: 3), () {
        _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
      });
    }
    if(_activePage == 1){
      Timer(Duration(seconds: 3), () {
        _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
      });
    }
    if(_activePage == 2){
      Timer(Duration(seconds: 3), () {
        _pageController.animateTo(0,duration: Duration(seconds: 1), curve: Curves.easeInOut);
      });
    }
  }

  final List<Widget> _pages = [
    OnBoardingElement(
        imageName: $appAssets.imgs.splash1,
        label: 'Explorez les trésors cachés \ndu Bénin',
    ),
    OnBoardingElement(
      imageName: $appAssets.imgs.splash2,
      label: 'Créez votre aventure idéale',
    ),
    OnBoardingElement(
      imageName: $appAssets.imgs.splash3,
      label: 'Une expérience sur mesure',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page){
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index){
              return _pages[index % _pages.length];
            },
          ),

          Positioned(
              bottom: 36,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _pages.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _pageController.animateToPage(entry.key,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn
                          ),
                          child: Container(
                            width: 10.0,
                            height: 10.0,
                            margin: EdgeInsets.symmetric(horizontal: 7.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: _activePage == entry.key ? AppColors.primaryOne : AppColors.white,
                            ),
                        ));
                      }).toList(),
                    ),
                  ),
                  SpaceH(13),
                  Text('Passer',
                    textAlign: TextAlign.center,
                    style: AppTypography().regularOneUnderlined,
                  ),
                ],
              )
          ),
        ],)

    ) ;
  }
}


