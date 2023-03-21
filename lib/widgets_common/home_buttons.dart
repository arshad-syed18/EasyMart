import 'package:ecommerse_app/consts/consts.dart';

Widget homeButtons({width, height, icon, title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title.toString().text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.size(width, height).shadowSm.white.make();
}
