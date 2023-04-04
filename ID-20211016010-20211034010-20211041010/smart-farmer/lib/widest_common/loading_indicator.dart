import 'package:farmer/consts/consts.dart';

Widget loadingindicator() {
  return const CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(redColor),
  );
}
