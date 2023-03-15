import 'package:get/get.dart';

import 'address_mdl.dart';

class AddressController extends GetxController {
  var addresses = <Address>[].obs;

  addAddress(Address address) {
    addresses.add(address);
  }

  updateAddress(Address oldAddress, Address newAddress) {
    final index = addresses.indexOf(oldAddress);
    addresses[index] = newAddress;
  }
}
