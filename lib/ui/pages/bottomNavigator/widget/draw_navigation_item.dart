import 'package:visitbj/export.dart';
class DrawerNavigationItem extends StatelessWidget {
  const DrawerNavigationItem(
      {Key? key, required this.icon, required this.title, required this.onTap})
      : super(key: key);

  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 63)
            .copyWith(left: 33, top: 19),
        child: AppInkwell(
          onTap: onTap,
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SpaceW(9),
              Expanded(
                child: Text(
                  title,
                  style: AppTypography()
                      .headline
                      .copyWith(color: AppColors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
