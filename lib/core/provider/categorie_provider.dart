import 'package:visitbj/export.dart';

import '../domain/locales/categories.dart';

class CategoryProvider extends ChangeNotifier {
  List<Category> listCategories = [];
  List<Category> get categories => allCategory;
  List<Category> get categoriesDivideList => allCategory.take(4).toList();
 
  CategoryProvider() {
    getcategory();
    
  }

  getcategory() {
    listCategories = [

    ];
    notifyListeners();
  }
}
