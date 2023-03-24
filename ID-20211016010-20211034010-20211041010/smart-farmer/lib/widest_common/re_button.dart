import 'package:farmer/consts/consts.dart';
import 'package:farmer/consts/strings.dart';

Widget myButton({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(padding: EdgeInsets.all(12)),
    onPressed: onPress,
    child: signup.text.black.fontFamily(bold).make(),
  );
}
