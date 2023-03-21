import 'package:ecommerse_app/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          redColor,
          Colors.white,
        ],
        stops: [0.4, 0.6],
      ),
    ),
    child: child,
  );
}
