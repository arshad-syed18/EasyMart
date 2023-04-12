import 'package:ecommerse_app/consts/consts.dart';
import 'package:ecommerse_app/consts/lists.dart';
import 'package:ecommerse_app/views/profile_screen/details_card.dart';
import 'package:ecommerse_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                // users details
                Row(
                  children: [
                    Image.asset(imgProfile2, width: 70, fit: BoxFit.cover)
                        .box
                        .roundedFull
                        .clip(Clip.antiAlias)
                        .make(),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy user".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "customer@example.com".text.white.make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                          color: whiteColor,
                        )),
                        onPressed: () {},
                        child: logout.text.fontFamily(semibold).white.make())
                  ],
                ),
                5.heightBox,
                // edit profile button
                const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit, color: whiteColor),
                ).onTap(() {}),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(
                        count: "0",
                        title: "in your cart",
                        width: context.screenWidth / 3.4),
                    detailsCard(
                        count: "0",
                        title: "in your wishlist",
                        width: context.screenWidth / 3.4),
                    detailsCard(
                        count: "0",
                        title: "in your orders",
                        width: context.screenWidth / 3.4),
                  ],
                ),
                20.heightBox,
                // buttons section
                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profileButtonsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: profileButtonsList[index].text.make(),
                    );
                  },
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .make(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
