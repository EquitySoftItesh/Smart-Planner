import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/productlist/productdetails/order/personaldetails/address/address_src.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/productlist/productdetails/order/personaldetails/paymentsuccess.dart';

import '../../../../../../../widgets/ColorsSchemes.dart';
import '../../../../../../../widgets/CustomTextField.dart';
import 'address/address_ctrl.dart';

class PersonalDetailsScreen extends StatelessWidget {
  PersonalDetailsScreen({Key? key}) : super(key: key);

  final addressController = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: SizedBox(
          height: 50,
          width: Get.width,
          child: ElevatedButton(
            onPressed: () {
              Get.to(const PaymentSuccessScreen());
            },
            style: ElevatedButton.styleFrom(
              primary: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Place Order',
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Personal Details',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Name',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomTextField(
                hintText: 'Alea Greter',
                obscure: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Mobile number',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomTextField(
                hintText: '7069882345',
                prefixIcon: SizedBox(
                  width: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '91',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down),
                      const RotatedBox(
                        quarterTurns: 1,
                        child: SizedBox(
                          width: 60,
                          child: Divider(
                            thickness: 1,
                            color: Color(0xFFDFDFDF),
                            height: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                obscure: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Address',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(AddressScreen(
                        editAddress: null,
                      ));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 20,
                          color: Color(0xFF007D8D),
                        ),
                        Text(
                          'Add',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF007D8D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: addressController.addresses.length,
                itemBuilder: (context, index) {
                  final address = addressController.addresses[index];
                  return ListTile(
                    title: Text(
                      address.receiverName.toString(),
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        '${address.houseFlatNumber}, ${address.flatName}, ${address.nearOrOpposite}, ${address.areaName}, ${address.city}, ${address.postalCode}, ${address.country}',
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFF00BCD4),
                          child: InkWell(
                            child: Image.asset(
                              'assets/pen.png',
                              height: 21,
                              width: 21,
                              color: Colors.white,
                            ),
                            onTap: () async {
                              await Get.to(() => AddressScreen(
                                  editAddress:
                                      addressController.addresses[index]));

                              addressController.update();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFFD00000),
                          child: InkWell(
                            child: Image.asset(
                              'assets/dustbin.png',
                              height: 18,
                              width: 18,
                            ),
                            onTap: () {
                              addressController.addresses.removeAt(index);
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
