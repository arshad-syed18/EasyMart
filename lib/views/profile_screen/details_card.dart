import 'package:ecommerse_app/consts/consts.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "0".text.fontFamily(bold).size(18).color(darkFontGrey).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .rounded
      .height(80)
      .width(width)
      .padding(const EdgeInsets.all(4))
      .make();
}
