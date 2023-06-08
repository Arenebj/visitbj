import 'package:visitbj/export.dart';

class OnBoardingElement extends StatelessWidget {
  final imageName;
  final label;
  const OnBoardingElement({Key? key, this.imageName, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Column(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(
                image:  DecorationImage(image: AssetImage(imageName),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Positioned(
                bottom: 130,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  child: Center(
                    child: Text(label,
                      textAlign: TextAlign.center,
                      style: AppTypography().medium,
                    ),
                  ),
                )
            )

          ],)
      ],),
    );
  }
}