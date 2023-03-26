import 'package:farmer/consts/consts.dart';
import 'package:farmer/views/scren/Home.dart';
import 'package:farmer/views/scren/signupscren.dart';
import 'package:farmer/widest_common/applogo_wid.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:farmer/widest_common/custom_testfield.dart';
import 'package:farmer/widest_common/our_button.dart';
import 'package:farmer/widest_common/re_button.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.07).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(20).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(hint: emailhint, title: email, isPass: false),
                customtextfield(
                    hint: passwordhint, title: password, isPass: true),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetpassword.text.make())),
                5.heightBox,
                ourbutton(onPress: () {
                  Get.to(() => const Home());
                }).box.width(context.screenWidth - 50).make(),
                //ourbutton(color: redColor, title: Login, textcolor: whiteColor)
                //  .box
                //.width(context.screenWidth - 50)
                // .make(),
                5.heightBox,
                createanewaccount.text.color(fontGrey).make(),
                5.heightBox,
                myButton(onPress: () {
                  Get.to(() => SignupScreen());
                }),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
          ],
        ),
      ),
    ));
  }
}
