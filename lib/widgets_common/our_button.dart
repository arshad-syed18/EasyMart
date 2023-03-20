import 'package:ecommerse_app/consts/consts.dart';

Widget ourButton({color, title, textColor, onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: () {
      onPress;
    },
    child: title.toString().text.color(textColor).fontFamily(bold).make(),
  );
}
