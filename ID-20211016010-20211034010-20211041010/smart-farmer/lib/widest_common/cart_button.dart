import 'package:farmer/consts/consts.dart';

Widget cartbutton({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: "Proceed to shipping".text.white.fontFamily(bold).make(),
  );
}
