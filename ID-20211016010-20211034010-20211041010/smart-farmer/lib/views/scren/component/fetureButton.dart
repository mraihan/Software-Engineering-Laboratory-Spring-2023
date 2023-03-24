import 'package:farmer/consts/consts.dart';

Widget featureButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 100, fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 8))
      .white
      .padding(const EdgeInsets.all(8))
      .roundedSM
      .outerShadow
      .make();
}
