import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/widgets/item_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: (16), vertical: (12)),

        child: Column(children: [ItemGridView()]),
      ),
    );
  }
}
