import 'package:visitbj/export.dart';

class PackEventProvider extends ChangeNotifier {
  List<PackEvent> listPacks = [];
  List<PackEvent> get packs => listPacks;

  PackEventProvider() {
    getcategory();
  }

  getcategory() {
    listPacks = [
      PackEvent(1, 40, 600, 4.8, 5, "Nature Sauvage Bronze", "2023-07-22",
          "2023-07-26", 100000, [
        $appAssets.imgs.antilope,
        $appAssets.imgs.bourgogne,
        $appAssets.imgs.antilope,
      ]),
      PackEvent(2, 40, 600, 4.8, 5, "Nature Sauvage Bronze", "2023-07-22",
          "2023-07-26", 100000, [
        $appAssets.imgs.antilope,
        $appAssets.imgs.bourgogne,
        $appAssets.imgs.antilope,
      ]),
      PackEvent(3, 40, 600, 4.8, 5, "Nature Sauvage Bronze", "2023-07-22",
          "2023-07-26", 100000, [
        $appAssets.imgs.antilope,
        $appAssets.imgs.bourgogne,
        $appAssets.imgs.antilope,
      ]),
    ];
    notifyListeners();
  }
}
