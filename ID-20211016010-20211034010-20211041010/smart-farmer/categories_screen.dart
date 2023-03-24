import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/list.dart';
import 'package:farmer/ctegori/catagori_details.dart';
import 'package:farmer/widest_common/bg_wid.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class categoriesScreen extends StatelessWidget {
  const categoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        title: Categories.text.fontFamily(bold).color(green).make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoriimg[index],
                    height: 130,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  "${categorilist[index]}"
                      .text
                      .black
                      .align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .color(green)
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => categorydetails(title: categorilist[index]));
              });
            }),
      ),
    ));
  }
}
