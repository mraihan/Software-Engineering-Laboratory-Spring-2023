import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer/consts/consts.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class profileController extends GetxController {
  var profileimgPath = ''.obs;
  var profileImageLink = '';

//text field

  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var isloading = false.obs;

  changeImage(context) async {
    try {
      final img = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 70);
      if (img == null) return;
      profileimgPath.value = img.path;
    } on PlatformException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  //image method
  uploadprofileimage() async {
    var filename = basename(profileimgPath.value);
    var destination = 'images/${currentUser!.uid}/$filename';
    Reference ref = FirebaseStorage.instance.ref().child(destination);
    await ref.putFile(File(profileimgPath.value));
    profileImageLink = await ref.getDownloadURL();
  }

  updatProfile({name, password, imgUrl}) async {
    var store = firestore.collection(userCollection).doc(currentUser!.uid);
    await store.set({'name': name, 'password': password, 'imageUrl': imgUrl},
        SetOptions(merge: true));
    isloading(false);
  }
}
