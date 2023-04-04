import 'package:farmer/consts/consts.dart';

Widget Continue({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: "CONTINUE".text.white.fontFamily(bold).make(),
  );
}
