// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFormFieldNormal extends StatelessWidget {
  const TextFormFieldNormal({
    Key? key,
    this.data,
    required this.labelText,
    this.controller,
    required this.hintText,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.focusNode,
    this.obscureText,
    this.suffixIcon,
    this.maxLines,
    this.readOnly,
    this.isEnable,
    this.maxLength,
  }) : super(key: key);

  final String? data;
  final String labelText;
  final TextEditingController? controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? obscureText;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool? readOnly;
  final bool? isEnable;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      focusNode: focusNode,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      validator: validator,
      readOnly: readOnly ?? false,
      enabled: isEnable,
      decoration: InputDecoration(
        labelText: labelText,
        counterText: "",
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
        suffixIcon: suffixIcon,
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      maxLines: maxLines,
      maxLength: maxLength,
    );
  }
}
