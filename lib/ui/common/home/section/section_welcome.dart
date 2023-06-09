import 'package:visitbj/export.dart';

class WelcomeSection extends StatelessWidget {
  final String title;
  final String image;
  const WelcomeSection(this.title, this.image, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TitleText(
          title,
          AppTypography().semiBold.copyWith(fontSize: 28.h),
        ),
      ],
    );
  }
}
