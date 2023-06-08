import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: SvgPicture.asset($appAssets.svgs.icon),),
    );
  }
}
