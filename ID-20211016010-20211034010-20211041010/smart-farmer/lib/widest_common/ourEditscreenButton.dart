import 'package:farmer/consts/consts.dart';

Widget ourEditbutton({onPress}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 22, 148, 11),
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: "change"
        .text
        .color(Color.fromARGB(255, 0, 0, 0))
        .fontFamily(bold)
        .make(),
  );
}
