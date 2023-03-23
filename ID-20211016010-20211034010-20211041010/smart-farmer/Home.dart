import 'dart:async';

import 'package:farmer/Account/account.dart';
import 'package:farmer/Cart/cartScreen.dart';
import 'package:farmer/consts/consts.dart';
import 'package:farmer/controller/home_controller.dart';
import 'package:farmer/ctegori/categories_screen.dart';
import 'package:farmer/views/scren/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: Categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: Account)
    ];

    var navBody = [
      HomeScreen(),
      categoriesScreen(),
      cartScreen(),
      profileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: green,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          items: navbaritem,
          onTap: (Value) {
            controller.currentNavIndex.value = Value;
          },
        ),
      ),
    );
  }
}
