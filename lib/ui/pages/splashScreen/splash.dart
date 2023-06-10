import 'dart:async';

import 'package:visitbj/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onStartUp();
  }
  void onStartUp()  {
    timer = Timer(const Duration(seconds: 2), () {
      context.pushReplacement(AppPage.dashboard.toPath);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryTwo,
      body:Center(child: SvgPicture.asset($appAssets.svgs.logo,),),
    );

  }
}

