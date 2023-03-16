import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/profile/personalinfo/personalInfo_ctrl.dart';

import '../../../widgets/ColorsSchemes.dart';
import '../../../widgets/CustomTextField.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({Key? key}) : super(key: key);

  final PersonalInfoController controller = PersonalInfoController();

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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Update',
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
          'Personal Information',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 200,
                width: Get.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 255, 255, 0),
                    Color.fromRGBO(0, 188, 212, 0.2)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Center(
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 65,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color.fromRGBO(0, 188, 212, 1),
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Username',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                hintText: 'Algra097',
                obscure: false,
                fillColor: Color.fromRGBO(204, 204, 204, 0.25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Full name',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                hintText: 'Allie Grater',
                obscure: false,
                fillColor: Color.fromRGBO(204, 204, 204, 0.25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Mobile number',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                  child: InkWell(
                    onTap: () {
                      controller.pic(context);
                    },
                    child: Obx(
                      () => Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              controller.selectedCountry.value,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
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
                  ),
                ),
                obscure: false,
                fillColor: const Color.fromRGBO(204, 204, 204, 0.25),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Email',
                style: GoogleFonts.raleway(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                hintText: ' allieg@gmail.com ',
                obscure: false,
                fillColor: Color.fromRGBO(204, 204, 204, 0.25),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
