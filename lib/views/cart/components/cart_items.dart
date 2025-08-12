
import 'package:app/common/widgets/products/cart/add_remove_button.dart';
import 'package:app/common/widgets/products/cart/cart_item.dart';
import 'package:app/common/widgets/texts/product_price_text.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems(
      {super.key,
      this.showAddRemoveButtons = true,
     });
  final bool showAddRemoveButtons;
  
  @override
  Widget build(BuildContext context) {
    // final user = context.watch<UserProvider>().user;
    List<Map<String, dynamic>> cartItems = [];
    int sum = 0;
   

    return ListView.separated(
        shrinkWrap: true,
        itemCount: 5,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
              children: [
                TCartItem(index: index),
                if (showAddRemoveButtons)
                  const SizedBox(height: TSizes.spaceBtwItems),

                ///add remove button
                if (showAddRemoveButtons)
                
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                        ),
                                        TProductQuantityWithAddRemoveButton()
                                      ],
                                    ),
                                    TProductPriceText(price: '23123')
                                  ],
                  )
              ],
            ));
  }
}
