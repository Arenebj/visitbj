import 'package:visitbj/export.dart';

class DashboardProvider extends ChangeNotifier {
  int get index => _index;
  int _index = 0;

  AppPage get path => _path;
  AppPage _path = AppPage.dashboard;

  setIndex(index) {
    _index = index;
    notifyListeners();
  }

  setPath(path) {
    _path = path;
    notifyListeners();
  }

  List<Widget> listPage = [];
}
