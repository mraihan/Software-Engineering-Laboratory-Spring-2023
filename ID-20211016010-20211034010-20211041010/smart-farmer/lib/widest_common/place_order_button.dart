import 'package:farmer/consts/consts.dart';

Widget procedOrder({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: "Place my order".text.white.fontFamily(bold).make(),
  );
}
