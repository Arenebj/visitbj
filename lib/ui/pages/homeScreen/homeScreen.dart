import 'package:visitbj/export.dart';

import '../bottomNavigator/widget/draw_navigation_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appHome(),
      backgroundColor: Colors.white,
      body: bodyHome(context),
    );
  }
}

