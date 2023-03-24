import 'package:farmer/consts/consts.dart';
import 'package:farmer/ctegori/items_details.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class categorydetails extends StatelessWidget {
  final String? title;
  const categorydetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Animal Medicine"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .rounded
                        .size(120, 70)
                        .margin(const EdgeInsets.symmetric(horizontal: 5))
                        .make()),
              ),
            ),
            20.heightBox,
            //item container
            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(B1,
                              height: 150, width: 200, fit: BoxFit.cover),
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
                          .color(green)
                          .margin(const EdgeInsets.symmetric(horizontal: 6))
                          .rounded
                          .padding(EdgeInsets.all(6))
                          .makeCentered()
                          .onTap(() {
                        Get.to(() => itemdetails(title: "Dummy Items"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
