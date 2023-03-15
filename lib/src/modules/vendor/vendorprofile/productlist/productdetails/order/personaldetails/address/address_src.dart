import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../../widgets/ColorsSchemes.dart';
import '../../../../../../../../widgets/CustomTextField.dart';
import 'address_ctrl.dart';
import 'address_mdl.dart';

class AddressScreen extends StatelessWidget {
  Address? editAddress;
  AddressScreen({Key? key, required this.editAddress}) : super(key: key);

  final addressController = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    final TextEditingController receiverNameController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.receiverName);
    final TextEditingController houseNumberController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.houseFlatNumber);
    final TextEditingController flatNameController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.flatName);
    final TextEditingController nearController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.nearOrOpposite);
    final TextEditingController areaNameController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.areaName);
    final TextEditingController cityController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.city);
    final TextEditingController postalCodeController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.postalCode);
    final TextEditingController countryController = TextEditingController(
        text: editAddress == null ? '' : editAddress!.country);

    void onSubmitPressed() {
      final address = Address(
        receiverName: receiverNameController.text,
        houseFlatNumber: houseNumberController.text,
        flatName: flatNameController.text,
        nearOrOpposite: nearController.text,
        areaName: areaNameController.text,
        city: cityController.text,
        postalCode: postalCodeController.text,
        country: countryController.text,
      );
      addressController.addAddress(address);
      Get.back();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'Address',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          leading: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SizedBox(
            height: 50,
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {
                if (editAddress != null) {
                  final address = Address(
                    receiverName: receiverNameController.text,
                    houseFlatNumber: houseNumberController.text,
                    flatName: flatNameController.text,
                    nearOrOpposite: nearController.text,
                    areaName: areaNameController.text,
                    city: cityController.text,
                    postalCode: postalCodeController.text,
                    country: countryController.text,
                  );
                  addressController.updateAddress(editAddress!, address);
                  Get.back();
                } else {
                  onSubmitPressed();
                }
              },
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Continue',
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 22.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Receiver Name',
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
                  controller: receiverNameController,
                  hintText: 'Alea Greter',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'House/Flat Number',
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
                  controller: houseNumberController,
                  hintText: 'A - 10',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Flat name',
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
                  controller: flatNameController,
                  hintText: 'Walnutwood Street',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Near or Opposite',
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
                  controller: nearController,
                  hintText: 'Laurel Drive Noblesville',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Area Name',
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
                  controller: areaNameController,
                  hintText: 'Kent',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'City',
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
                  controller: cityController,
                  hintText: 'Burlington',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Postal Code',
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
                  controller: postalCodeController,
                  hintText: 'MA 01803',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Country',
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
                  controller: countryController,
                  hintText: 'Albania',
                  obscure: false,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
