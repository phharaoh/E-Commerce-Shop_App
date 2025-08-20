import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/models/product_model.dart';

class ItemInfoView extends StatelessWidget {
  const ItemInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final product =
        GoRouter.of(context).routerDelegate.currentConfiguration.extra
            as ProductModel?;
    if (product == null) {
      return const Scaffold(body: Center(child: Text('No product data')));
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * .5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(product.name),
                Text('\$${product.price.toStringAsFixed(2)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
