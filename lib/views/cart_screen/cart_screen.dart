import 'package:ecommerse_app/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: "Cart is Empty!".text.fontFamily(semibold).make(),
    );
  }
}
