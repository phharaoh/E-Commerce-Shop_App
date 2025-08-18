import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/widgets/custom_filter_btn.dart';


class FilterBtn extends StatelessWidget {
  const FilterBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomFilterBtn(txt: 'All', onPress: () {}),
        CustomFilterBtn(txt: 'Featured', onPress: () {}),
        CustomFilterBtn(txt: 'New', onPress: () {}),
      ],
    );
  }
}
