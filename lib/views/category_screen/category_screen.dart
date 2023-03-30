import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/consts/lists.dart';
import 'package:ecommerse_app/views/category_screen/category_details.dart';
import 'package:ecommerse_app/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoryimages[index],
                      height: 120, width: 200, fit: BoxFit.cover),
                  // ignore: unnecessary_string_interpolations
                  "${categoriesList[index]}"
                      .text
                      .color(darkFontGrey)
                      .center
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(
                  () => CategoryDetails(title: categoriesList[index]),
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
