import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/icons/t_circular_icon.dart';
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/common/widgets/texts/product_price_text.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
// Tạo biến để lưu giữ giá trị dựa vào isIconSale

// Sử dụng selectedProduct theo nhu cầu
// Ví dụ:

    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      // height: 300,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGrey,
        // boxShadow: [TShadowStyle.verticalProductShadow],
      ),
      child: Row(children: [
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Stack(
            children: [
              const SizedBox(
                height: 120,
                width: 120,
                child: TRoundedImage(
                  // fit: BoxFit.contain,
                  imageUrl: TImages.productImage65,
                  applyImageRadius: true,
                ),
              ),
              // sale tag
              Positioned(
                top: 12,
                child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    )),
              ),

              ///favorite icon
              const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  )),
              //
            ],
          ),
        ),
        //details
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: 'GGreen nike ghalf sleeves shirt',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    TBrandTitleWithVerifiedIcon(title: 'product!'),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(child: TProductPriceText(price: '222')),
                    Container(
                      decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius))),
                      child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(
                            Iconsax.add,
                            color: TColors.white,
                          ))),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );

//     GestureDetector(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.all(1),
//         child:

//             //detail
//             SizedBox(
//               width: 172,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: TSizes.sm, left: TSizes.sm),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ProductTitleText(
//                           title: 'product!.name',
//                           smallSize: true,
//                         ),
//                         SizedBox(
//                           height: TSizes.spaceBtwItems / 2,
//                         ),
//                         TBrandTitleWithVerifiedIcon(title: 'product!'),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
  }
}
