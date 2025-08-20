import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce_app/models/card_model.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';
import 'package:e_commerce_app/controller/card_controller.dart';

class Item extends StatefulWidget {
  final ProductModel product;
  const Item({super.key, required this.product});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/itemView',extra: widget.product);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  widget.product.image,
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
                    widget.product.isAddCard = !widget.product.isAddCard;
                  });

                  if (!widget.product.isAddCard) {
                    cardConroller.removeFromCard(
                      CardModel(
                        name: widget.product.name,
                        image: widget.product.image,
                        price: widget.product.price,
                        quantity: 1,
                      ),
                    );
                  } else {
                    cardConroller.addToCard(
                      CardModel(
                        name: widget.product.name,
                        image: widget.product.image,
                        price: widget.product.price,
                        quantity: 1,
                      ),
                    );
                  }
                },
                icon: Icon(
                  widget.product.isAddCard
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined,
                ),
              ),
            ],
          ),
          Text(
            widget.product.name,
            style: const TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          Text(
            '\$${widget.product.price.toStringAsFixed(2)}',
            style: const TextStyle(
              color: AppColors.iconColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
