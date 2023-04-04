import 'package:farmer/consts/consts.dart';
import 'package:farmer/widest_common/exit_button2.dart';
import 'package:farmer/widest_common/exitbutton.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "conform".text.fontFamily(bold).size(18).color(darkFontGrey).make(),
        Divider(),
        10.heightBox,
        "Are you sure you want to exit?"
            .text
            .size(16)
            .color(darkFontGrey)
            .make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            exitbutton(onPress: () {
              SystemNavigator.pop();
            }),
            exitbtnNo(onPress: () {
              Navigator.pop(context);
            })
          ],
        ),
      ],
    ).box.color(lightGrey).padding(EdgeInsets.all(16)).roundedSM.make(),
  );
}
