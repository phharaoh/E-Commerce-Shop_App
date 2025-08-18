import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/models/card_model.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';
import 'package:e_commerce_app/controller/card_controller.dart';

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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      var cardConroller = Provider.of<CardController>(
                        context,
                        listen: false,
                      );
                      setState(() {
                        product.isAddCard = !product.isAddCard;
                      });

                      if (!product.isAddCard) {
                        cardConroller.removeFromCard(
                          CardModel(
                            name: product.name,
                            image: product.image,
                            price: product.price,
                            quantity: 1,
                          ),
                        );
                      } else {
                        cardConroller.addToCard(
                          CardModel(
                            name: product.name,
                            image: product.image,
                            price: product.price,
                            quantity: 1,
                          ),
                        );
                      }
                    },
                    icon: Icon(
                      product.isAddCard
                          ? Icons.shopping_cart
                          : Icons.shopping_cart_outlined,
                    ),
                  ),
                ],
              ),
              Text(
                product.name,
                style: const TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: AppColors.iconColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
