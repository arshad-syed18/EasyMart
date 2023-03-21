import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/consts/lists.dart';
import 'package:ecommerse_app/views/auth_screen/signup_screen.dart';
import 'package:ecommerse_app/views/home_screen/home_screen.dart';
import 'package:ecommerse_app/widgets_common/applogo_widget.dart';
import 'package:ecommerse_app/widgets_common/bg_widget.dart';
import 'package:ecommerse_app/widgets_common/custom_textfield.dart';
import 'package:ecommerse_app/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Login to $appname".text.fontFamily(bold).white.size(18).make(),
              20.heightBox,
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
                  5.heightBox,
                  ourButton(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => const HomeScreen());
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  ourButton(
                      color: lightGrey,
                      title: signup,
                      textColor: redColor,
                      onPress: () {
                        Get.to(() => const SignUpScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  .box
                  .gray200
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
