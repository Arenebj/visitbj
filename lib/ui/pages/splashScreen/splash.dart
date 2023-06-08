import 'dart:async';

import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3, ), (){
      context.pushReplacement(AppPage.onBoarding.toPath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: SvgPicture.asset($appAssets.svgs.icon),),
    );
  }
}
