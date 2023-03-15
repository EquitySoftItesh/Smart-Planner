import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/auth/forgot_src.dart';
import 'package:smartplanner/src/modules/auth/signup_scr.dart';
import 'package:smartplanner/src/widgets/ColorsSchemes.dart';
import 'package:get/get.dart';
import 'login_ctrl.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(LoginFormController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/logindoodle.png',
                height: 279,
                width: 267,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 125, 141, 0.08),
                    borderRadius: BorderRadius.circular(15)),
                child: Form(
                  key: controller.loginScreenkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Login',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Please sign in to continue',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          decoration: InputDecoration(
                            focusedErrorBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 0),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                    right:
                                        BorderSide(color: Color(0xFFDFDFDF))),
                              ),
                              child: Icon(
                                Icons.mail,
                                color: AppColor.buttonColor,
                                size: MediaQuery.of(context).size.width * 0.07,
                              ),
                            ),
                            hintText: 'allieg@gmail.com',
                            hintStyle: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: controller.validateEmail,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => controller.email.value = value,
                          controller: controller.emailController,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          decoration: InputDecoration(
                            focusedErrorBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 0),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            prefixIcon: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                    right:
                                        BorderSide(color: Color(0xFFDFDFDF))),
                              ),
                              child: Icon(
                                Icons.lock,
                                color: AppColor.buttonColor,
                                size: MediaQuery.of(context).size.width * 0.07,
                              ),
                            ),
                            hintText: '******',
                            hintStyle: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: controller.validatePassword,
                          obscureText: true,
                          onChanged: (value) =>
                              controller.password.value = value,
                          controller: controller.passwordController,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Get.to(ForgotScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Text(
                            'Forgot password?',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00BCD4),
                              ),
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
                              'Login',
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
                        height: 15,
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          Get.to(SignUpScreen());
                        },
                        child: RichText(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: GoogleFonts.raleway(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Don’t have an account?',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: ' Sign up',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.none,
                                    color: Color(0xFF00BCD4),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
