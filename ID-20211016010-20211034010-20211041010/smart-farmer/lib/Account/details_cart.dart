import 'package:farmer/consts/consts.dart';

Widget detailsCart({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(Color.fromARGB(255, 7, 247, 255)).make(),
    ],
  )
      .box
      .color(Color.fromARGB(143, 202, 230, 210))
      .rounded
      .shadow3xl
      .width(width)
      .padding(EdgeInsets.all(4))
      .height(80)
      .make();
}
