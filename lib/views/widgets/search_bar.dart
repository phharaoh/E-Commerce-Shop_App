import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';

class TxtFeild extends StatelessWidget {
  const TxtFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          fillColor: AppColors.secoundryColor,
          filled: true,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
