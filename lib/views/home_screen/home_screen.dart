import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/consts/lists.dart';
import 'package:ecommerse_app/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(12),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              height: 150,
              itemCount: slidersList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  slidersList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) => homeButtons(
                    height: context.screenHeight * 0.1,
                    width: context.screenWidth / 2.5,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todaysDeal : flashSale),
              ),
            ),
            10.heightBox,
            VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              height: 150,
              itemCount: secondSlidersList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  secondSlidersList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              },
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) => homeButtons(
                    height: context.screenHeight * 0.1,
                    width: context.screenWidth / 3.5,
                    icon: index == 0
                        ? icTopCategories
                        : index == 1
                            ? icBrands
                            : icTopSeller,
                    title: index == 0
                        ? topCategories
                        : index == 1
                            ? brand
                            : topSeller),
              ),
            ),
            20.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: featuredCategories.text
                  .color(darkFontGrey)
                  .size(18)
                  .fontFamily(semibold)
                  .make(),
            )
          ],
        ),
      ),
    );
  }
}
