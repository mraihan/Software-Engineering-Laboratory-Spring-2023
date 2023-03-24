import 'package:farmer/consts/consts.dart';

Widget button1({onPress, color}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: addtocard.text.white.fontFamily(bold).make(),
  );
}
