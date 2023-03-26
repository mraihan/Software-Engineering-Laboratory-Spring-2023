import 'package:farmer/consts/consts.dart';
import 'package:farmer/views/scren/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: regular),
      home: const SplashScreen(),
    );
  }
}
