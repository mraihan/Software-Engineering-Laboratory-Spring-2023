import 'package:farmer/consts/consts.dart';

Widget ourEditbutton2({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(218, 4, 80, 94),
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child:
        "Save".text.color(Color.fromARGB(255, 5, 3, 3)).fontFamily(bold).make(),
  );
}
