import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText = '',
    this.label = '',
    this.suffixIcon,
    this.maxLines = 1,
    this.validator,
    this.maxLength,
    this.keyboardType,
    this.controller,
    this.prefixIcon,
    this.initialValues,
    required this.fillColor,
    this.obscure,
  });
  final String hintText;
  final String label;
  final String? initialValues;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscure;
  final int maxLines;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 0,
      child: TextFormField(
        onChanged: (e) {
          print(e);
        },
        maxLength: maxLength,
        initialValue: initialValues,
        validator: validator,
        maxLines: maxLines,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscure!,
        decoration: InputDecoration(
          counterText: '',
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 0),
          ),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 0),
              borderRadius: BorderRadius.circular(10)),
          disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 0),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintStyle: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          fillColor: fillColor,
          filled: true,
        ),
        style: GoogleFonts.raleway(
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
