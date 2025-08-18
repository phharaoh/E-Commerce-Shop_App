import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/widgets/item.dart';
import 'package:e_commerce_app/models/product_model.dart';

class ItemGridView extends StatefulWidget {
  const ItemGridView({super.key});

  @override
  State<ItemGridView> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: productsList.length,

        itemBuilder: (context, index) {
          ProductModel product = productsList[index];
          return Item(product: product);
        },
      ),
    );
  }
}
