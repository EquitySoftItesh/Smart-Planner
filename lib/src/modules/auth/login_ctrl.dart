import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dashboard/dashboard_src.dart';
import '../services/firebase/firebase_auth.dart';

class LoginFormController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> loginScreenkey =
      GlobalKey<FormState>(debugLabel: '_loginScreenkey');

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (value!.isEmpty) {
      return 'Enter email address';
    }
    if (value.isNotEmpty && !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Enter a password';
    }
    if (value.length < 6) {
      return 'Minimum length for password is 6';
    }
  }

  void validateForm() {
    if (loginScreenkey.currentState!.validate()) {
      AuthController.authInstance.login(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
    }
  }
}
