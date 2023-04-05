import 'package:farmer/Cart/payment_method.dart';
import 'package:farmer/consts/consts.dart';
import 'package:farmer/controller/cart_controller.dart';
import 'package:farmer/widest_common/custom_testfield.dart';
import 'package:farmer/widest_common/order_button.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<cartController>();
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Shipping Info"
            .text
            .fontFamily(semibold)
            .color(darkFontGrey)
            .make(),
      ),
      bottomNavigationBar: SizedBox(
          height: 60,
          child: Continue(onPress: () {
            if (controller.addressController.text.length > 10) {
              Get.to(() => const paymentMethods());
            } else {
              VxToast.show(context, msg: "Please fill the form");
            }
          })),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            customtextfield(
                hint: "Address",
                isPass: false,
                title: "Address",
                controller: controller.addressController),
            customtextfield(
                hint: "District",
                isPass: false,
                title: "District",
                controller: controller.districtController),
            customtextfield(
                hint: "Sub-district",
                isPass: false,
                title: "Sub-district",
                controller: controller.subDistrictController),
            customtextfield(
                hint: "Postal Code",
                isPass: false,
                title: "Postal Code",
                controller: controller.postalCodeController),
            customtextfield(
                hint: "+880........",
                isPass: false,
                title: "Phone Number",
                controller: controller.phoneNumberController),
          ],
        ),
      ),
    );
  }
}
