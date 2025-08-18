import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';

class CustomTxtForm extends StatelessWidget {
  const CustomTxtForm({
    super.key,
    this.obscureText,
    required this.hintText,
    this.suffixIcon,
    required this.validator,
  });
  final bool? obscureText;
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,

        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.secoundryColor,
            width: .05,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
