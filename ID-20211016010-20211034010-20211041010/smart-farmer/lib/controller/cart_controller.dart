import 'package:farmer/consts/consts.dart';
import 'package:get/get.dart';

class cartController extends GetxController {
  var totalP = 0.obs;

//text controller for shipping details

  var addressController = TextEditingController();
  var districtController = TextEditingController();
  var subDistrictController = TextEditingController();
  var postalCodeController = TextEditingController();
  var phoneNumberController = TextEditingController();

  calculate(data) {
    totalP.value = 0;
    for (var i = 0; i < data.length; i++) {
      totalP.value = totalP.value + int.parse(data[i]['tprice'].toString());
    }
  }
}
