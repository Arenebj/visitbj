import 'package:visitbj/export.dart';

import '../../../../core/domain/locales/pack.dart';
class SafariScreen extends StatefulWidget {
  const SafariScreen({super.key});

  @override
  State<SafariScreen> createState() => _SafariScreenState();
}

class _SafariScreenState extends State<SafariScreen> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
            itemBuilder: (context,index){
              return const SpaceH(16);
            },
            separatorBuilder: (context,index){
              return CustomCards(pack: allPack[index],);
            },
            itemCount: allPack.length)
    );

  }
}
