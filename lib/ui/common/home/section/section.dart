import 'package:visitbj/export.dart';

class TitleText extends StatelessWidget {
  final String title;
  final TextStyle style;
  const TitleText(this.title, this.style, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
    );
  }
}

class ImageAsset extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const ImageAsset(this.image, this.height, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height,
      width: width,
      image: AssetImage(image),
    );
  }
}
class ImageSvg extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const ImageSvg(this.image, this.height, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return  SvgPicture.asset(image,
     height: height,
      width: width,
    );
  }
}

class PageViewSection extends StatelessWidget {
  const PageViewSection(this.image, {super.key});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(10),
      // margin: EdgeInsets.only(left: 2.h),
      width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
      height: 208.04.h,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          borderRadius: BorderRadius.all(
            Radius.circular(10.h),
          ),
          shape: BoxShape.rectangle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              child: SvgPicture.asset($appAssets.svgs.coeur),
              onPressed: () async {},
            ),
          ),
        ],
      ),
    );
  }
}
/* class PageViewSection extends StatelessWidget {
  const PageViewSection(this.images, {super.key});
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    //final packs = Provider.of<PackEventProvider>(context);
    final pageView = Provider.of<DashboardProvider>(context);

    return PageView.builder(
        itemCount: images.length,
        pageSnapping: true,
        controller: pageView.pageController,
        onPageChanged: (page) {
          pageView.setActivePage(page);
          //activePage = page;
        },
        itemBuilder: (context, pagePosition) {
          return
           Container(
            height: 180,
            width: MediaQuery.of(context).size.width * 0.4,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            margin: const EdgeInsets.only(left: 2),
            // width: 247.32.h, //MediaQuery.of(context).size.width * 0.70,
            // height: 208.04.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[pagePosition])),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                shape: BoxShape.rectangle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                      size: 26.h,
                      color: AppColors.white,
                    ),
                    onPressed: () async {},
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, pageView.activePage)),
              ],
            ),
          );
        });
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(2),
        width: currentIndex == index ? 20 : 12,
        height: currentIndex == index ? 10 : 8,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xffFF8473)
                : const Color(0xffFFC0B8),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            shape: BoxShape.rectangle),
      );
    });
  }
} */
