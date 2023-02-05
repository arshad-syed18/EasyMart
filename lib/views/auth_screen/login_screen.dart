import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/widgets_common/applogo_widget.dart';
import 'package:ecommerse_app/widgets_common/bg_widget.dart';
import 'package:ecommerse_app/widgets_common/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Login to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPassword.text.make(),
                    ),
                  ),
                ],
              )
                  .box
                  .gray200
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
