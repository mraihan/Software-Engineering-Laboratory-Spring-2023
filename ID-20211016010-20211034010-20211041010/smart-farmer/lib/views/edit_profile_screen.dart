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
  final dynamic data;

  const EditProfileScreen({super.key, this.data});

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
            //if image  url and  controller path is empty
            data['imageUrl'] == '' && controller.profileimgPath.isEmpty
                ? Image.asset(imP1, height: 90, width: 90, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make()
                //if image url is noy empty but controller is empty
                : data['imageUrl'] != '' && controller.profileimgPath.isEmpty
                    ? Image.network(
                        data['imageUrl'],
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ).box.roundedFull.clip(Clip.antiAlias).make()
                    //both are empty
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
            customtextfield(
                controller: controller.nameController,
                hint: namehint,
                title: name,
                isPass: false),
            customtextfield(
                controller: controller.passwordController,
                hint: passwordhint,
                title: password,
                isPass: true),
            20.heightBox,
            controller.isloading.value
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(redColor),
                  )
                : SizedBox(
                    width: context.screenWidth - 60,
                    child: ourEditbutton2(onPress: () async {
                      controller.isloading(true);
                      await controller.uploadprofileimage();
                      await controller.updatProfile(
                        imgUrl: controller.profileImageLink,
                        name: controller.nameController.text,
                        password: controller.passwordController.text,
                      );
                      VxToast.show(context, msg: "Uploaded");
                    })),
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
