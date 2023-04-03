import 'package:farmer/Model/category_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  var subcat = [];

  getSubCategories(title) async {
    subcat.clear();
    var data = await rootBundle.loadString("lib/services/Category_model.json");
    var decoded = categoryModelFromJson(data);
    var s =
        decoded.categories.where((element) => element.name == title).toList();

    for (var e in s[0].subcategory) {
      subcat.add(e);
    }
  }
}
