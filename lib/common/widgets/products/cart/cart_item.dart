
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/common/widgets/texts/product_title_text.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TCartItem extends StatefulWidget {
  final int index;
  const TCartItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  State<TCartItem> createState() => _CartProductState();
}

class _CartProductState extends State<TCartItem> {
  // final ProductDetailsServices productDetailsServices =
  //     ProductDetailsServices();
  // final CartServices cartServices = CartServices();

  // void increaseQuantity(Product product) {
  //   productDetailsServices.addToCart(
  //     context: context,
  //     product: product,
  //   );
  // }

  // void decreaseQuantity(Product product) {
  //   cartServices.removeFromCart(
  //     context: context,
  //     product: product,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // final productCart = context.watch<UserProvider>().user.cart![widget.index];
    // final product = Product.fromMap(productCart['product']);
    // final quantity = productCart['quantity'];
    return Row(
      children: [
        TRoundedImage(
          isNetworkImage: false,
          imageUrl: TImages.google,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        //title price Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flexible(
                child: ProductTitleText(
                  title: 'product.name.toString()',
                  maxLines: 5,
                  smallSize: true,
                ),
              ),
              const TBrandTitleWithVerifiedIcon(title: 'product.category.toString()'),
              const Flexible(child: ProductTitleText(title: 'glass sport shoes',maxLines: 1,)),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text:'color',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text:'color',style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text:'color',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text:'color',style: Theme.of(context).textTheme.bodyLarge),
                ])
              ),
              // TProductPriceText(
              //   price: '222',
              //   isLarge: false,
              // ),
              // Row(
              //   children: [
              //     InkWell(
              //       onTap: () => {},
              //       child: Container(
              //         width: 35,
              //         height: 32,
              //         alignment: Alignment.center,
              //         child: const Icon(
              //           Icons.remove,
              //           size: 18,
              //         ),
              //       ),
              //     ),
              //     DecoratedBox(
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.black12, width: 1.5),
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(0),
              //       ),
              //       child: Container(
              //         width: 35,
              //         height: 32,
              //         alignment: Alignment.center,
              //         child: Text(
              //           '2',
              //         ),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () => {},
              //       child: Container(
              //         width: 35,
              //         height: 32,
              //         alignment: Alignment.center,
              //         child: const Icon(
              //           Icons.add,
              //           size: 18,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        )
      ],
    );
  }
}
