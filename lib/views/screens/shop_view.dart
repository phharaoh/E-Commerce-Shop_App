import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/widgets/filter_btn.dart';
import 'package:e_commerce_app/views/widgets/search_bar.dart';
import 'package:e_commerce_app/views/widgets/item_grid_view.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: (16.0),
          vertical: (12),
        ),

        child: Column(
          children: [
            TxtFeild(),
            SizedBox(height: 16),
            FilterBtn(),

            SizedBox(height: 16),
            ItemGridView(),
          ],
        ),
      ),
    );
  }
}
