import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartplanner/src/modules/services/firebase/firebase_auth.dart';

class SignUpFormController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final confirmpassword = ''.obs;
  final username = ''.obs;
  final fullname = ''.obs;
  final mobile = ''.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final selectedCountry = '+91'.obs;

  void pic(context) {
    showCountryPicker(
      context: context,
      exclude: <String>['KN', 'MF'],
      favorite: <String>['SE'],
      showPhoneCode: true,
      onSelect: (Country country) {
        selectedCountry.value = country.phoneCode;
      },
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xFF8C98A8).withOpacity(0.2),
            ),
          ),
        ),
        searchTextStyle: const TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
      ),
    );
  }

  var isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  var isConfirmPasswordVisible = false.obs;

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  final signupScreenkey = GlobalKey<FormState>();

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
    } else if (value.isNotEmpty && !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Enter a password';
    } else if (value.length < 6) {
      return 'Minimum length for password is 6';
    }
  }

  String? validateConfirmPassword(String? value) {
    if (value!.isEmpty) {
      return 'Enter a confirm password';
    } else if (value.length < 6) {
      return 'Minimum length for confirm password is 6';
    } else if (passwordController.text != value) {
      return 'Password and Confirm Password are not same...!!!';
    }
    return null;
  }

  String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return 'Enter your username';
    } else if (value.length < 6) {
      return 'Minimum length for username is 6';
    }
    return null;
  }

  String? validateFullName(String? value) {
    if (value!.isEmpty) {
      return 'Enter your full name';
    }
    return null;
  }

  String? validateMobile(String? value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  void validateForm() {
    if (signupScreenkey.currentState!.validate()) {
      AuthController.authInstance.register(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
    }
  }
}
