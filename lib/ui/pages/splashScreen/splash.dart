import 'package:visitbj/export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Image.asset($appAssets.imgs.logo),),
    );
  }
}
