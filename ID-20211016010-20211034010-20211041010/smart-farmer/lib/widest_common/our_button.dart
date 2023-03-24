import 'package:farmer/consts/consts.dart';

Widget ourbutton({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: login.text.white.fontFamily(bold).make(),
  );
}
