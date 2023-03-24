import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/list.dart';
import 'package:farmer/views/scren/component/fetureButton.dart';
import 'package:farmer/widest_common/homebutton.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Color.fromARGB(255, 25, 175, 82),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  //swiper
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      itemCount: cropslist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image.asset(
                            cropslist[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        );
                      }),

                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButton(
                              width: context.screenWidth / 2.5,
                              height: context.screenHeight * 0.1,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todaydeal : FlashSell,
                            )),
                  ),
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      itemCount: Sliderlist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image.asset(
                            Sliderlist[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        );
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        1,
                        (index) => homeButton(
                              width: context.screenWidth / 2.5,
                              height: context.screenHeight * 0.1,
                              icon: icFlashDeal,
                              title: agriculturaltips,
                            )),
                  ),

                  50.heightBox,

                  Align(
                    alignment: Alignment.centerLeft,
                    child: morefeture.text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Column(
                          children: [
                            featureButton(
                                icon: featurelistimg1[index],
                                title: featuretitle1[index]),
                            10.heightBox,
                            featureButton(
                                icon: featurelistimg2[index],
                                title: featuretitle2[index]),
                          ],
                        ),
                      ).toList(),
                    ),
                  ),

                  //feature product
                  60.heightBox,
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(122, 0, 214, 160),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featureproduct.text.white
                            .fontFamily(bold)
                            .size(25)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                6,
                                (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        .margin(const EdgeInsets.symmetric(
                                            horizontal: 6))
                                        .rounded
                                        .padding(EdgeInsets.all(8))
                                        .make()),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //thirt sroller
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      itemCount: cropslist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Image.asset(
                            cropslist[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make(),
                        );
                      }),

                  //all product section

                  20.heightBox,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(B3,
                                height: 200, width: 200, fit: BoxFit.cover),
                            10.heightBox,
                            "Tido-120 ml "
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            const Spacer(),
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
                            .margin(const EdgeInsets.symmetric(horizontal: 6))
                            .rounded
                            .padding(EdgeInsets.all(12))
                            .make();
                      })
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
