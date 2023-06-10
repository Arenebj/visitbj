import 'package:visitbj/export.dart';

appHome() {
  return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    actions: [
      ImageAsset($appAssets.imgs.userImage, 35.43.h, 35.43.w),
      SpaceW(15.w),
      appBarMenu(
        $appAssets.svgs.panier,
        AppColors.cartNote,
        Colors.black,
        1,
      ),
      appBarMenu(
        $appAssets.svgs.notification,
        AppColors.red,
        Colors.white,
        0,
      ),
    ],
  );
}

Widget appBarMenu(String image, Color colorBg, Color color, int total) {
  return TextButton(
    onPressed: null,
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero), // Retirer le padding
      minimumSize:
          MaterialStateProperty.all(Size.zero), // Retirer la taille minimale
    ),
    child: SizedBox(
      height: 35.43.h,
      width: 35.43.w,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          ImageSvg(image, 25.h, 25.w),
          Positioned(
              top: 0.h,
              right: 5.w,
              child: SizedBox(
                height: 20.h,
                width: 20.w,
                child: CircleAvatar(
                  backgroundColor: colorBg,
                  child: Text(
                    total.toString(),
                    style: TextStyle(
                      color: color,
                      fontSize: 10.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}
