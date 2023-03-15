import 'package:get/get.dart';

class OrderController extends GetxController {
  var orderquantity = 1.obs;

  increment() => orderquantity.value++;
  decrement() {
    if (orderquantity > 1) {
      orderquantity.value--;
    }
  }
}
