import 'package:ecommerse_app/consts/consts.dart';

Widget applogoWidget() {
  //using velocity x
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
