import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer/consts/consts.dart';
import 'package:farmer/services/firestore_services.dart';
import 'package:farmer/widest_common/loading_indicator.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class wishlistScreen extends StatelessWidget {
  const wishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "পছন্দের তালিকার পন্য"
            .text
            .color(darkFontGrey)
            .fontFamily(semibold)
            .make(),
      ),
      body: StreamBuilder(
          stream: FireStoreServices.getWishlist(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: loadingindicator(),
              );
            } else if (snapshot.data!.docs.isEmpty) {
              return "পছন্দের তালিকায় পন্য যুক্ত করুন!"
                  .text
                  .color(darkFontGrey)
                  .makeCentered();
            } else {
              var data = snapshot.data!.docs;

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Image.network(
                              "${data[index]['p_imgs'][0]}",
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                            title:
                                "${data[index]['p_name']} (q=${data[index]['p_quantity']})"
                                    .text
                                    .fontFamily(semibold)
                                    .size(16)
                                    .make(),
                            subtitle: "${data[index]['p_price']}"
                                .numCurrency
                                .text
                                .color(redColor)
                                .fontFamily(semibold)
                                .make(),
                            trailing:
                                const Icon(Icons.favorite, color: redColor)
                                    .onTap(() async {
                              await firestore
                                  .collection(productCollection)
                                  .doc(data[index].id)
                                  .set({
                                'p_wishlist':
                                    FieldValue.arrayRemove([currentUser!.uid])
                              }, SetOptions(merge: true));
                            }),
                          );
                        }),
                  ),
                ],
              );
            }
          }),
    );
  }
}
