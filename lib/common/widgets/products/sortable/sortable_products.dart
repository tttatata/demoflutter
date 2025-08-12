
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher price',
            'Lower price',
            'Newest',
            'Popular',
            'sale',
          ]
              .map(
                  (option) => DropdownMenuItem(value:option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        TGidLayout(
          itemCount: 4,
          itemBuilder: (_, index) => const TProductCardVertical())
      ],
    );
  }
}
