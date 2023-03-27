import 'dart:io';

import 'package:farmer/consts/consts.dart';
import 'package:farmer/controller/profile_controller.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:farmer/widest_common/custom_testfield.dart';
import 'package:farmer/widest_common/ourEditbutton2.dart';
import 'package:farmer/widest_common/ourEditscreenButton.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<profileController>();
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            controller.profileimgPath.isEmpty
                ? Image.asset(imP1, height: 90, width: 90, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make()
                : Image.file(
                    File(controller.profileimgPath.value),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ourEditbutton(onPress: () {
              controller.changeImage(context);
            }),
            Divider(),
            20.heightBox,
            customtextfield(hint: namehint, title: name, isPass: false),
            customtextfield(hint: passwordhint, title: password, isPass: true),
            20.heightBox,
            SizedBox(
                width: context.screenWidth - 60,
                child: ourEditbutton2(onPress: () {})),
          ],
        )
            .box
            .white
            .shadowSm
            .rounded
            .padding(EdgeInsets.all(16))
            .margin(EdgeInsets.only(top: 50, left: 12, right: 12))
            .make(),
      ),
    ));
  }
}
