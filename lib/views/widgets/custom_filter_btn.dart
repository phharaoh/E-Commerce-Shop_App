import 'package:flutter/widgets.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';

class CustomFilterBtn extends StatelessWidget {
  const CustomFilterBtn({super.key, required this.txt, required this.onPress});
  final String txt;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: AppColors.secoundryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Text(
            txt,
            style: const TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
