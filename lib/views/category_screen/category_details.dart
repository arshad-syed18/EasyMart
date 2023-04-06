import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/views/category_screen/item_details.dart';
import 'package:ecommerse_app/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: title!.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothing"
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(120, 60)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),
              20.heightBox,
              // items container
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 4GB/64Gb"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .shadowSm
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .padding(const EdgeInsets.all(8))
                          .make()
                          .onTap(() {
                        Get.to(const ItemDetails(title: "Dummy item"));
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
