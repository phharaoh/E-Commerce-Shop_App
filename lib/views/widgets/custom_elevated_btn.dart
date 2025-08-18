import 'package:flutter/material.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({
    super.key,
    required this.txt,
    required this.onPress,
  });
  final String txt;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPress,
        child: Text(
          txt,
          style: const TextStyle(color: AppColors.white, fontSize: 22),
        ),
      ),
    );
  }
}
