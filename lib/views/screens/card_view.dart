import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/helper/theme/app_color.dart';
import 'package:e_commerce_app/controller/card_controller.dart';
import 'package:e_commerce_app/views/widgets/custom_elevated_btn.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    var cardController = Provider.of<CardController>(context, listen: false);
    return Scaffold(
      body: cardController.cardList.isEmpty
          ? const Center(child: Text('Empity'))
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cardController.cardList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final productList = cardController.cardList[index];
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(8),
                            child: Image.asset(
                              productList.image,
                              width: 56,
                              height: 56,
                            ),
                          ),
                          title: Text(
                            productList.name,
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                          subtitle: Text(
                            '\$${productList.price}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.iconColor,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                              ),
                              Text(productList.quantity.toString()),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  CustomElevatedBtn(
                    txt: 'proceed to check out',
                    onPress: () {
                      cardController.clearCard();
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
