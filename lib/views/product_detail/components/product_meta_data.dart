
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/images/t_circular_image.dart';
import 'package:app/common/widgets/texts/product_price_text.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/enums.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    Key? key,
 
    this.isIconSale = true,
  }) : super(key: key);

  final bool isIconSale;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //sale tag
       Row(
          children: [
              TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm,
                    vertical: TSizes.xs,
                  ),
                  child: Text(
                    'sale off 25%',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: TColors.black),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwItems ),
                  Text(
                  '250vnd',
                  style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                  const SizedBox(width: TSizes.spaceBtwItems),TProductPriceText(price: '175',isLarge: true,),
                 
          ]
            
             
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            const ProductTitleText(
              title: 'product.name.toString()',
              smallSize: false,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
             //stock status
             Row(
              children: [
                const ProductTitleText(
                  title: 'status',
                  
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'In Stock',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 1.5),
            //TBrand
            Row(
              children: [
                TCircularImage(image: TImages.shoeIcon,
                width: 32,
                height: 32, overlayColor: darkMode ? const Color.fromARGB(255, 255, 255, 255) : const Color.fromARGB(255, 0, 0, 0),
                ),
               
                const SizedBox(width: TSizes.spaceBtwItems),
                const TBrandTitleWithVerifiedIcon(
                  title: 'asdasd',
                  brandTextSize: TextSizes.medium,
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            const Row(
              children: [
                TProductPriceText(
                  price:' 350',
                  isLarge: true,
                ),
                SizedBox(width: TSizes.spaceBtwItems),
                SizedBox(width: TSizes.spaceBtwItems / 1.5),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: TSizes.spaceBtwItems / 2),
                    Text(
                      "Tồn Kho: 44 tồn kho",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Đã bán: aaa sản phẩm",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
