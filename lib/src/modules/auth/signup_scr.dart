import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smartplanner/src/modules/auth/signup_ctrl.dart';
import 'package:smartplanner/src/widgets/CustomTextField.dart';
import 'dart:io';

import '../../widgets/ColorsSchemes.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final controller = Get.put(SignUpFormController());

  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final image = File(pickedFile.path);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: controller.signupScreenkey,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Please enter info to create account',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    InkWell(
                      onTap: () async {
                        pickImage();
                      },
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: SizedBox(
                        width: 85,
                        height: 85,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 188, 212, 0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/signupperson.png',
                                height: 79,
                                width: 79,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 21,
                                width: 21,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(19, 35, 48, 1),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Color.fromRGBO(0, 188, 212, 1),
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: CustomTextField(
                            hintText: 'Algra097',
                            obscure: false,
                            fillColor:
                                const Color.fromRGBO(204, 204, 204, 0.25),
                            validator: controller.validateUsername,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Full Name',
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
                            hintText: 'Allie Grater',
                            obscure: false,
                            fillColor:
                                const Color.fromRGBO(204, 204, 204, 0.25),
                            validator: controller.validateFullName,
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
                            maxLength: 10,
                            hintText: '9988998899',
                            obscure: false,
                            fillColor:
                                const Color.fromRGBO(204, 204, 204, 0.25),
                            validator: controller.validateMobile,
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
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          controller.selectedCountry.value,
                                          style: GoogleFonts.raleway(
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
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
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: CustomTextField(
                            hintText: 'abc@gmail.com',
                            obscure: false,
                            keyboardType: TextInputType.emailAddress,
                            fillColor:
                                const Color.fromRGBO(204, 204, 204, 0.25),
                            validator: controller.validateEmail,
                            controller: controller.emailController,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Password',
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
                        Obx(
                          () => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: CustomTextField(
                              hintText: '********',
                              suffixIcon: IconButton(
                                icon: controller.isPasswordVisible.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed: controller.togglePasswordVisibility,
                              ),
                              obscure: !controller.isPasswordVisible.value,
                              fillColor:
                                  const Color.fromRGBO(204, 204, 204, 0.25),
                              validator: controller.validatePassword,
                              controller: controller.passwordController,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Confirm Password',
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
                        Obx(
                          () => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: CustomTextField(
                              hintText: '********',
                              suffixIcon: IconButton(
                                icon: controller.isConfirmPasswordVisible.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                                onPressed:
                                    controller.toggleConfirmPasswordVisibility,
                              ),
                              obscure:
                                  !controller.isConfirmPasswordVisible.value,
                              fillColor:
                                  const Color.fromRGBO(204, 204, 204, 0.25),
                              validator: controller.validateConfirmPassword,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: RichText(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'By Continuing, you are agreeing to our ',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'terms and conditions',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                      color: Color(0xFF00BCD4)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: SizedBox(
                        height: 50,
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.validateForm();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.buttonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
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
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/signupdoodle.png',
                    height: Get.height / 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
