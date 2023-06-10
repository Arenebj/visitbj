import 'package:visitbj/export.dart';
export '../../pages/homeScreen/pack_description.dart';
import '../../common/bottomNavigator/bottom_menu_item.dart';

class ScaffoldCustom extends StatelessWidget {
  const ScaffoldCustom({super.key, });

  @override
  Widget build(BuildContext context) {
    final homeDashBoardProvider = Provider.of<DashboardProvider>(context);
    return Scaffold(
      body: Consumer<DashboardProvider>(
        builder: (context, provider, child) {
          if(provider.path==AppPage.home){
            return const HomeScreen();
          }else if(provider.path==AppPage.favors){
            return const FavorsScreen();
          }else if(provider.path==AppPage.packdetails){
            return  const PackDescription();
          }else if(provider.path==AppPage.bracket){
            return const HomeScreen();
          }else if(provider.path==AppPage.customize){
            return const PackDescription();
          }
          else{
            return const HomeScreen();
          }
        },
      ),
      bottomNavigationBar:Consumer<DashboardProvider>(
        builder: (context, provider, child) {
          return BottomAppBar(
            color: AppColors.primaryTintLight,
            child: Container(
              height: 70,
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset:  const Offset(5, -5),
                        blurRadius: 5,
                        color: AppColors.black.withOpacity(0.05)),
                  ]
              ),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 11, right: 17,bottom: 16,top: 13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomMenuItem(
                      label: "Accueil",
                      icon: provider.index==0
                          ? $appAssets.svgs.home
                          : $appAssets.svgs.inactiveHome,
                      onTap: () {
                        if(provider.path!=AppPage.home || homeDashBoardProvider.path!=AppPage.home){
                          provider.setIndex(0);
                          homeDashBoardProvider.setPath(AppPage.home);
                          provider.setPath(AppPage.home);
                        }
                      },
                      color: provider.index==0?AppColors.primaryTwo:AppColors.outline,
                    ),
                    BottomMenuItem(
                      label: "Mes favoris",
                      icon: provider.index==1
                          ? $appAssets.svgs.favors
                          : $appAssets.svgs.inactiveFavors,
                      onTap: () {
                        if(provider.path!=AppPage.favors || homeDashBoardProvider.path!=AppPage.favors){
                          provider.setIndex(1);
                          homeDashBoardProvider.setPath(AppPage.favors);
                          provider.setPath(AppPage.favors);
                        }
                      },
                      color: provider.index==1?AppColors.primaryTwo:AppColors.outline,
                    ),
                    BottomMenuItem(
                      label: "Panier",
                      icon: provider.index==2
                          ? $appAssets.svgs.basket
                          : $appAssets.svgs.inactiveBasket,
                      onTap: () {
                        if(provider.path!=AppPage.bracket || homeDashBoardProvider.path!=AppPage.bracket){
                          provider.setIndex(2);
                          homeDashBoardProvider.setPath(AppPage.bracket);
                          provider.setPath(AppPage.bracket);
                        }
                      },
                      color: provider.index==2?AppColors.primaryTwo:AppColors.outline,
                    ),
                    BottomMenuItem(
                      label: "Personnaliser",
                      icon: provider.index==3
                          ? $appAssets.svgs.customize
                          : $appAssets.svgs.inactiveCustomize,
                      onTap: () {
                        if(provider.path!=AppPage.customize || homeDashBoardProvider.path!=AppPage.customize){
                          provider.setIndex(3);
                          homeDashBoardProvider.setPath(AppPage.customize);
                          provider.setPath(AppPage.customize);
                        }
                      },
                      color: provider.index==3?AppColors.primaryTwo:AppColors.outline,
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),


    );
  }
}



