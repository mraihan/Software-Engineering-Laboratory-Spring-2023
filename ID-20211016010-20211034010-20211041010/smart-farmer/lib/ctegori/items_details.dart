import 'package:farmer/consts/consts.dart';
import 'package:farmer/ctegori/button/buybutton.dart';
import 'package:farmer/widest_common/our_button.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class itemdetails extends StatelessWidget {
  final String? title;
  const itemdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: darkFontGrey,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: darkFontGrey,
                ))
          ]),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      //swiper section

                      VxSwiper.builder(
                          autoPlay: true,
                          height: 350,
                          itemCount: 3,
                          aspectRatio: 16 / 9,
                          itemBuilder: (context, index) {
                            return Image.asset(ac6,
                                width: double.infinity, fit: BoxFit.cover);
                          }),

                      10.heightBox,
                      //title and details selection

                      title!.text
                          .size(16)
                          .color(darkFontGrey)
                          .fontFamily(bold)
                          .make(),
                      10.heightBox,
                      //rating

                      VxRating(
                        onRatingUpdate: (value) {},
                        normalColor: textfieldGrey,
                        selectionColor: green,
                        count: 5,
                        size: 25,
                        stepInt: true,
                      ),

                      10.heightBox,
                      "Tk.120 per kg"
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(18)
                          .make(),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.blue100.make(),
                              5.heightBox,
                              "In House seeds"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .size(16)
                                  .make(),
                            ],
                          )),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.message_rounded,
                                color: darkFontGrey),
                          ),
                        ],
                      )
                          .box
                          .height(60)
                          .padding(EdgeInsets.symmetric(horizontal: 16))
                          .color(textfieldGrey)
                          .make(),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child:
                                "selection:".text.color(textfieldGrey).make(),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),
                  //color section
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "chose".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                              3,
                              (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(EdgeInsets.symmetric(horizontal: 6))
                                  .make(),
                            ),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      //  Quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quentity".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              5.widthBox,
                              " Kg"
                                  .text
                                  .size(18)
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .make(),
                              10.widthBox,
                              " (Available 0)"
                                  .text
                                  .size(18)
                                  .color(textfieldGrey)
                                  .make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //total section
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total"
                                .text
                                .size(20)
                                .color(textfieldGrey)
                                .make(),
                          ),
                          Row(
                            children: [
                              "TK.00.00"
                                  .text
                                  .size(16)
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .size(20)
                                  .make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),
                  //discription

                  "Discription : "
                      .text
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  "null: ".text.color(darkFontGrey).fontFamily(bold).make(),
                  10.heightBox,
                  "null: ".text.color(darkFontGrey).fontFamily(bold).make(),
                  10.heightBox,
                  "null: ".text.color(darkFontGrey).fontFamily(bold).make(),

                  20.heightBox,
                  //product may also like

                  productmatalsolike.text
                      .fontFamily(bold)
                      .size(25)
                      .color(darkFontGrey)
                      .make(),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          6,
                          (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(B1,
                                      width: 150, fit: BoxFit.cover),
                                  10.heightBox,
                                  "Tido-120 ml "
                                      .text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  10.heightBox,
                                  "TK. 65 "
                                      .text
                                      .color(redColor)
                                      .fontFamily(bold)
                                      .size(16)
                                      .make(),
                                ],
                              )
                                  .box
                                  .white
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 6))
                                  .rounded
                                  .padding(EdgeInsets.all(8))
                                  .make()),
                    ),
                  ),
                ],
              ),
            ),
          )),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: button1(
              color: green,
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
