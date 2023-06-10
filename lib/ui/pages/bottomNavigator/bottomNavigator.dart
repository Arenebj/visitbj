import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';
import 'package:visitbj/ui/pages/homeScreen/homeScreen.dart';
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({super.key});

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorScreenState();
}

class _BottomNavigatorScreenState extends State<BottomNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DashboardProvider>(
        builder: (context, provider, child) {
          return IndexedStack(
            index: provider.index,
            children: <Widget>[
              HomeScreen(),
              Center(child: Text(provider.index.toString())),
              Center(child: Text(provider.index.toString())),
              Center(child: Text(provider.index.toString())),
            ],
          );
        },
      ),
      bottomNavigationBar:Consumer<DashboardProvider>(
        builder: (context, provider, child) {
          return BottomNavigationBar(
            currentIndex: provider.index,
            onTap: provider.setIndex,
            backgroundColor: AppColors.primaryTintLight,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: AppTypography().bottomLabel,
            unselectedLabelStyle: AppTypography().bottomLabel.copyWith(color: AppColors.outline),
            selectedItemColor: AppColors.primaryTwo,
            items:  [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset($appAssets.svgs.inactiveHome),
                activeIcon: SvgPicture.asset($appAssets.svgs.home),
                label: "Accueil"
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset($appAssets.svgs.inactiveFavors),
                activeIcon: SvgPicture.asset($appAssets.svgs.favors),
                label: "Mes favoris"
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset($appAssets.svgs.inactiveSearch),
                activeIcon: SvgPicture.asset($appAssets.svgs.search),
                label: "Rechercher"
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset($appAssets.svgs.inactiveAccount),
                activeIcon: SvgPicture.asset($appAssets.svgs.account),
                label: "Compte"
              ),
            ],

          ) ;

        },
      ),

    );
  }
}
