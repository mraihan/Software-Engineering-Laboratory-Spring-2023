import 'package:farmer/consts/consts.dart';

class FireStoreServices {
  //get user data
  static gtUser(uid) {
    return firestore
        .collection(userCollection)
        .where('id', isEqualTo: uid)
        .snapshots();
  }
}
