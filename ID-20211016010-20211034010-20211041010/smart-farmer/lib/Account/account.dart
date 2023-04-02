import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer/Account/components/details_cart.dart';
import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/list.dart';
import 'package:farmer/controller/auth_controller.dart';
import 'package:farmer/controller/profile_controller.dart';
import 'package:farmer/services/firestore_services.dart';
import 'package:farmer/views/edit_profile_screen.dart';
import 'package:farmer/views/scren/loginscreen.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(profileController());
    return bgwidget(
      child: Scaffold(
        body: StreamBuilder(
          stream: FireStoreServices.gtUser(currentUser!.uid),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor)),
              );
            } else {
              var data = snapshot.data!.docs[0];
              return SafeArea(
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
                      Get.to(() => const EditProfileScreen());
                    }),
                  ),

                  //user details section

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(imP1,
                                height: 90, width: 90, fit: BoxFit.cover)
                            .box
                            .roundedFull
                            .clip(Clip.antiAlias)
                            .make(),
                        10.widthBox,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "${data['name']}"
                                  .text
                                  .fontFamily(semibold)
                                  .color(Color.fromARGB(255, 255, 57, 7))
                                  .make(),
                              5.heightBox,
                              "${data['email']}"
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
                          onPressed: () async {
                            await Get.put(AuthController())
                                .signoutMethod(context);
                            Get.offAll(() => LoginScreen());
                          },
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
                          count: data['cart_count'],
                          title: "in your cart",
                          width: context.screenWidth / 3.32),
                      10.widthBox,
                      detailsCart(
                          count: data['wishlist_count'],
                          title: "your wishlist",
                          width: context.screenWidth / 3.32),
                      10.widthBox,
                      detailsCart(
                          count: data['order_count'],
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
              ));
            }
          },
        ),
      ),
    );
  }
}
