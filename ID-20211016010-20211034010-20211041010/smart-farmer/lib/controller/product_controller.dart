import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer/Model/category_model.dart';
import 'package:farmer/consts/consts.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  var quantity = 0.obs;

  var totalprice = 0.obs;

  var subcat = [];
  var isFav = false.obs;

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

  increasequantity(totalQuantity) {
    if (quantity.value < totalQuantity) quantity.value++;
  }

  decreasequantity() {
    if (quantity.value > 0) quantity.value--;
  }

  calalculateTotalprice(price) {
    totalprice.value = price * quantity.value;
  }

  addtoCart({title, img, sellername, qty, tprice, context}) async {
    await firestore.collection(cartColllection).doc().set({
      'title': title,
      'img': img,
      'sellername': sellername,
      'qty': qty,
      'tprice': tprice,
      'added_by': currentUser!.uid
    }).catchError((error) {
      VxToast.show(context, msg: error.toString());
    });
  }

  resetvalue() {
    totalprice.value = 0;
    quantity.value = 0;
  }

  addtoWishlist(docId, context) async {
    await firestore.collection(productCollection).doc(docId).set({
      'p_wishlist': FieldValue.arrayUnion([currentUser!.uid])
    }, SetOptions(merge: true));
    isFav(true);
    VxToast.show(context, msg: "Added to wishlist");
  }

  removeFromWishlist(docId, context) async {
    await firestore.collection(productCollection).doc(docId).set({
      'p_wishlist': FieldValue.arrayRemove([currentUser!.uid])
    }, SetOptions(merge: true));

    isFav(false);

    VxToast.show(context, msg: "Remove from wishlist");
  }

  checkifFav(data) async {
    if (data['p_wishlist'].contains(currentUser!.uid)) {
      isFav(true);
    } else {
      isFav(false);
    }
  }
}
