import 'package:visitbj/export.dart';
import 'package:visitbj/ressources/theme/app_theme.dart';
import '../../../core/domain/locales/categories.dart';
import '../../common/appBar/customAppBar.dart';
import '../../common/home/packCards.dart';
class PackDescription extends StatefulWidget {
  const PackDescription({super.key});

  @override
  State<PackDescription> createState() => _PackDescriptionState();
}

class _PackDescriptionState extends State<PackDescription>with TickerProviderStateMixin {
  int index = 0;
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: allCategory.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceH(17),
            const AppBarCustom(
              title: 'Votre panier',
            ),
            const SpaceH(21),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 63,
              child: DefaultTabController(
                  length: allCategory.length,
                  child: TabBar(
                    isScrollable: true,
                    onTap: (value) {
                      return setState(() {
                        index = value;
                      });
                    },
                    indicator: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    controller: _controller,
                    tabs: allCategory.asMap().entries.map((entry)  => PackCards(
                      category: entry.value, index: entry.key, activeIndex: index,
                    )).toList(),
                  )),
            ),
            const SpaceH(25),
            Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                      controller: _controller,
                      children: const [
                        SafariScreen(),
                    Center(child: Text("2"),),
                    Center(child: Text("3"),),
                    Center(child: Text("4"),),
                    Center(child: Text("5"),),
                    Center(child: Text("6"),),
                    Center(child: Text("7"),),
                  ]),
                ))

          ],
        ),
      ),
    );
  }
}
