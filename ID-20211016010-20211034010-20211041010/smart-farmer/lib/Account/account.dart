import 'package:farmer/Account/components/details_cart.dart';
import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/list.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            //edit profile button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: const Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 255, 7, 7),
                ),
              ).onTap(() {
                ///edit profile section
              }),
            ),

            //user details section

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(imP1, height: 90, width: 90, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy User "
                            .text
                            .fontFamily(semibold)
                            .color(Color.fromARGB(255, 255, 57, 7))
                            .make(),
                        5.heightBox,
                        "Customer@gmail.com"
                            .text
                            .color(Color.fromARGB(242, 0, 0, 0))
                            .make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(
                      color: whiteColor,
                    )),
                    onPressed: () {},
                    child: loggout.text
                        .fontFamily(semibold)
                        .color(Color.fromARGB(255, 245, 8, 138))
                        .make(),
                  )
                ],
              ),
            ),
            20.heightBox,

            Row(
              children: [
                detailsCart(
                    count: "00.00",
                    title: "in your cart",
                    width: context.screenWidth / 3.32),
                10.widthBox,
                detailsCart(
                    count: "00.00",
                    title: "your wishlist",
                    width: context.screenWidth / 3.32),
                10.widthBox,
                detailsCart(
                    count: "00.00",
                    title: "orders",
                    width: context.screenWidth / 3.32),
              ],
            ),
            20.heightBox,
            //button section
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider(color: lightGrey);
              },
              itemCount: profilebuttonlist.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.asset(
                    profilebuttonicon[index],
                    width: 22,
                  ),
                  title: profilebuttonlist[index]
                      .text
                      .fontFamily(bold)
                      .color(darkFontGrey)
                      .make(),
                );
              },
            )
                .box
                .white
                .margin(EdgeInsets.all(20))
                .shadowSm
                .rounded
                .padding(EdgeInsets.symmetric(horizontal: 16))
                .make()
                .box
                .color(green)
                .make(),
          ],
        )),
      ),
    );
  }
}
