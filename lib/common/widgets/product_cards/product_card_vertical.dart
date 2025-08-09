import 'package:app/common/styles/shadows.dart';
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/icons/t_circular_icon.dart';
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/common/widgets/texts/product_price_text.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/enums.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    double sumRatings = 0;
    int totalReviews = 0;

    // Tính toán đánh giá trung bình
    double averageRating = 0; // Khai báo biến ở đây để có thể sử dụng sau này

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        // height: 300,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
          boxShadow: [TShadowStyle.verticalProductShadow],
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //Thumbnail
                  const TRoundedImage(
                    imageUrl: TImages.productsIllustration,
                    applyImageRadius: true,
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

                  //favorite icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            ///detail
            ///
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: SizedBox(
                // width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: ('giayf nikekeke'),
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    Row(
                      children: [
                        TBrandTitleWithVerifiedIcon(
                          title: 'aaa',
                          brandTextSize: TextSizes.small,
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
            const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: TSizes.sm),
                          child: TProductPriceText(
                            price: '350',
                            isLarge: false,
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSizes.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(TSizes.productImageRadius)),
                          ),
                          child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(Iconsax.add,
                                  color: TColors.white,
                                  size: TSizes.iconLg * 1.2),
                            ),
                          ),
                        ),
                      ],
                    )
          ],
        ),
      ),
    );
  }
}
