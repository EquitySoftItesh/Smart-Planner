import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/ColorsSchemes.dart';
import '../../../../widgets/CustomTextField.dart';

class OtherDispute extends StatelessWidget {
  const OtherDispute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SizedBox(
            height: 50,
            width: Get.width,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Submit Request',
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
                size: 20,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Other Issue',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                'Email',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: 'allieg@gmail.com',
                obscure: false,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Title',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextField(
                hintText: 'Payment Problem',
                obscure: false,
                fillColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Description',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.raleway(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  hintText:
                      'By 2028, a Mars-themed party could have a very different meaning. With visionaries like Elon Musk actively plotting to make visits to Mars a reality, ',
                  fillColor: Colors.white,
                  filled: true,
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
