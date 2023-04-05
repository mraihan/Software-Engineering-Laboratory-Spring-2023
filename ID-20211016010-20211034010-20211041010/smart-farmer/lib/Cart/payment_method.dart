import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/list.dart';
import 'package:farmer/controller/cart_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../widest_common/place_order_button.dart';

class paymentMethods extends StatelessWidget {
  const paymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<cartController>();
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: SizedBox(
        height: 60,
        child: procedOrder(onPress: () {
          controller.placemyorder(
              orderPaymentMethod: paymentmthod[controller.paymentIndex.value],
              totalAmount: controller.totalP.value);
        }),
      ),
      appBar: AppBar(
        title: "Payment Method"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Obx(
          () => Column(
            children: List.generate(paymentmthod.length, (index) {
              return GestureDetector(
                onTap: () {
                  controller.changePaymentindex(index);
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: controller.paymentIndex.value == index
                            ? redColor
                            : Colors.transparent,
                        width: 5,
                      )),
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(paymentMethodlist[index],
                          width: double.infinity,
                          colorBlendMode: BlendMode.darken,
                          color: Colors.black.withOpacity(0.5),
                          height: 100,
                          fit: BoxFit.cover),
                      controller.paymentIndex.value == index
                          ? Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                activeColor: redColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                value: true,
                                onChanged: (Value) {},
                              ),
                            )
                          : Container(),
                      Positioned(
                          bottom: 5,
                          right: 10,
                          child: paymentmthod[index]
                              .text
                              .white
                              .fontFamily(bold)
                              .size(16)
                              .make()),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
