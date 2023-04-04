import 'package:farmer/consts/consts.dart';

Widget exitbtnNo({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: "No".text.white.fontFamily(bold).make(),
  );
}
