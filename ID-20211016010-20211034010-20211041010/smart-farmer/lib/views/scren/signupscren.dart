import 'package:farmer/consts/consts.dart';
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

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
            "Join to $appname".text.fontFamily(bold).white.size(20).make(),
            10.heightBox,
            Column(
              children: [
                customtextfield(hint: namehint, title: name),
                customtextfield(hint: emailhint, title: email),
                customtextfield(hint: passwordhint, title: password),
                customtextfield(hint: repasswordhint, title: repassword),

                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.heightBox,
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termsandcondition,
                            style: TextStyle(
                              fontFamily: bold,
                              color: redColor,
                            )),
                      ],
                    )),
                  ],
                ),
                5.heightBox,
                myButton(onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: alreadyhaveanaccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )),
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                }),
                //ourbutton(color: redColor, title: Login, textcolor: whiteColor)
                //  .box
                //.width(context.screenWidth - 50)
                // .make(),

                5.heightBox,
                //  myButton(onPress: () {
                //  Get.to(() => SignupScreen());
                //  }),
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
