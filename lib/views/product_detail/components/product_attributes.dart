import 'package:app/common/widgets/chips/choice_chip.dart';
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/texts/product_price_text.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///attribute
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.light,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'price',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          ///actual price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          /////sale price
                          const TProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'stock',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          ///actual price
                          Text(
                            'in stock',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  )

                  ///
                  ///
                ],
              ),
              const ProductTitleText(
                title:
                    'This is the description of the product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors'),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'Green',
                  selected: false,
                  onSelected: (value) {},
                ),
                
                TChoiceChip(
                  text: 'Yellow',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
                
               
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'sizes'),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
             Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'eu 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: '38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
