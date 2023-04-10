import 'package:farmer/consts/consts.dart';
import 'package:farmer/views/scren/component/order_status.dart';
import 'package:farmer/views/scren/order_screen/order_place_details.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart' as intl;

class ordersdetails extends StatelessWidget {
  final dynamic data;
  const ordersdetails({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "অডার".text.fontFamily(semibold).make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              orderstatus(
                color: redColor,
                icon: Icons.done,
                title: "অডার",
                showDone: data['order_placed'],
              ),
              orderstatus(
                color: Colors.blue,
                icon: Icons.thumb_up,
                title: "নিশ্চিতকরণ",
                showDone: data['order_confirmed'],
              ),
              orderstatus(
                color: Colors.yellow,
                icon: Icons.delivery_dining,
                title: "বিতরণ",
                showDone: data['order_on_delivery'],
              ),
              orderstatus(
                color: green,
                icon: Icons.done_all,
                title: "বিতরণ করা হয়েছে",
                showDone: data['order_delivered'],
              ),
              const Divider(),
              20.heightBox,
              orderPlaceDetails(
                  d1: data['order_code'],
                  d2: data['shipping_method'],
                  title1: "অডার কোড",
                  title2: "পরিবহন মাধ্যম"),
              orderPlaceDetails(
                d1: intl.DateFormat("h:mma")
                    .add_yMd()
                    .format(data['order_date'].toDate()),
                d2: data['payment_method'],
                title1: "অডার তারিখ",
                title2: "মূল্যপরিশোধ পদ্ধতি",
              ),
              orderPlaceDetails(
                d1: "অবৈতনিক",
                d2: "অডার স্থাপন",
                title1: "লেনদেনের অবস্থা",
                title2: "বিতরণ অবস্থা",
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "ক্রেতার ঠিকানাঃ"
                            .text
                            .size(18)
                            .color(redColor)
                            .fontFamily(bold)
                            .make(),
                        "${data['order_by_name']}".text.make(),
                        "${data['order_by_email']}".text.make(),
                        "${data['order_by_address']}".text.make(),
                        "${data['order_by_district']}".text.make(),
                        "${data['order_by_sub_district']}".text.make(),
                        "${data['order_by_postal_code']}".text.make(),
                        "${data['order_by_phone']}".text.make()
                      ],
                    ),
                    Column(
                      children: [
                        "মোট টাকাঃ"
                            .text
                            .size(18)
                            .color(redColor)
                            .fontFamily(bold)
                            .make(),
                        "${data['total_amount']}"
                            .numCurrency
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .make(),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              20.heightBox,
              "পন্য"
                  .text
                  .color(darkFontGrey)
                  .fontFamily(bold)
                  .size(20)
                  .makeCentered(),
              10.heightBox,
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(data['oders'].length, (index) {
                  return orderPlaceDetails(
                    title1: data['oders'][index]['title'],
                    title2: data['oders'][index]['qty'],
                    d1: "............................................................",
                    d2: ".............................",
                  );
                }).toList(),
              ).box.color(Color.fromARGB(57, 126, 71, 71)).make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
