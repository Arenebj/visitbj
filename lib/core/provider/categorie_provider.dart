import 'package:visitbj/export.dart';

class CategoryProvider extends ChangeNotifier {
  List<Categorie> listCategories = [];
  List<Categorie> get categories => listCategories;
  List<Categorie> get categoriesDivideList => listCategories.take(4).toList();
 
  CategoryProvider() {
    getcategory();
    
  }

  getcategory() {
    listCategories = [
      Categorie(1, "Nature", $appAssets.svgs.nature),
      Categorie(2, "Safari", $appAssets.svgs.safari),
      Categorie(3, "Aventure", $appAssets.svgs.aventure),
      Categorie(4, "Culture", $appAssets.svgs.culture),
    ];
    notifyListeners();
  }
}
