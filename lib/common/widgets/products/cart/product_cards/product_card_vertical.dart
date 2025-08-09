// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';


// class TProductCardVertical extends StatelessWidget {
//   const TProductCardVertical({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     double sumRatings = 0;
//     int totalReviews = 0;

//     // Tính toán đánh giá trung bình
//     double averageRating = 0; // Khai báo biến ở đây để có thể sử dụng sau này

//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         width: 180,
//         // height: 300,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(TSizes.productImageRadius),
//           color: dark ? TColors.darkGrey : TColors.white,
//           boxShadow: [TShadowStyle.verticalProductShadow],
//         ),
//         child: Column(
//           children: [
//             TRoundedContainer(
//               height: 180,
//               padding: EdgeInsets.all(TSizes.sm),
//               backgroundColor: dark ? TColors.dark : TColors.light,
//               child: Stack(
//                 children: [
//                   TRoundedImage(
//                     imageUrl: TImages.productsIllustration,
//                     applyImageRadius: true,
//                   ),
//                   // sale tag
//                   Positioned(
//                     top: 12,
//                     child: TRoundedContainer(
//                         radius: TSizes.sm,
//                         backgroundColor: TColors.secondary.withOpacity(0.8),
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: TSizes.sm, vertical: TSizes.xs),
//                         child: Text(
//                           '25%',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelLarge!
//                               .apply(color: TColors.black),
//                         )),
//                   ),

//                   ///favorite icon
//                   Positioned(
//                       top: 0,
//                       right: 0,
//                       child: TCircularIcon(
//                         icon: Iconsax.heart5,
//                         color: Colors.red,
//                       ))
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: TSizes.spaceBtwItems / 2,
//             ),

//             ///detail
//             ///
//             Padding(
//               padding: EdgeInsets.only(left: TSizes.sm),
//               child: SizedBox(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ProductTitleText(
//                       title: ('giayf nikekeke'),
//                       smallSize: true,
//                     ),
//                     SizedBox(
//                       height: TSizes.spaceBtwItems / 2,
//                     ),
//                     TBrandTitleWithVerifiedIcon(
//                       title: 'aaa',
//                       brandTextSize: TextSizes.small,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: TSizes.spaceBtwItems / 2,
//             ),
//             Column(
//               children: [
//                 Container(
//                   // Đặt kích thước cho container nếu cần
//                   width: double.infinity,
//                   height: 100, // Ví dụ: chiều cao 200
//                   child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '35000',
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                           style: Theme.of(context).textTheme.headlineMedium,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               color: TColors.dark,
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(TSizes.cardRadiusMd),
//                                   bottomRight: Radius.circular(
//                                       TSizes.productImageRadius))),
//                        child: SizedBox(
//                         width: TSizes.iconLg * 1.2,
//                         height: TSizes.iconLg * 1.2,
//                         child: Center(child: Icon(Iconsax.add,color:TColors.white,))),
//                         )
//                         //price
//                         // Padding(
//                         //   padding: EdgeInsets.only(left: TSizes.sm),
//                         //   child: Column(
//                         //     crossAxisAlignment: CrossAxisAlignment
//                         //         .start, // Aligns children to the end (right side)
//                         //     children: [
//                         // TProductPriceText(
//                         //           price: 'aaaaa'),
//                         //       const SizedBox(
//                         //         height: TSizes.spaceBtwItems / 2,
//                         //       ),
//                         //       Row(
//                         //         children: [
//                         //           TProductSoldText(
//                         //               sold: '5555'),
//                         //           const SizedBox(
//                         //             width: TSizes.spaceBtwItems,
//                         //           ),
//                         //           Row(
//                         //             children: [
//                         //               Icon(
//                         //                 Iconsax.star5,
//                         //                 color: Colors.amber,
//                         //                 size: 18,
//                         //               ),
//                         //               Text.rich(
//                         //                 TextSpan(
//                         //                   children: [
//                         //                     TextSpan(
//                         //                         text: averageRating
//                         //                             .toStringAsFixed(1),
//                         //                         style: Theme.of(context)
//                         //                             .textTheme
//                         //                             .bodyLarge!
//                         //                             .copyWith(fontSize: 12)),
//                         //                     TextSpan(
//                         //                       children: [
//                         //                         TextSpan(
//                         //                             text:
//                         //                                 '3333',
//                         //                             style: Theme.of(context)
//                         //                                 .textTheme
//                         //                                 .bodyLarge!
//                         //                                 .copyWith(fontSize: 8)),
//                         //                       ],
//                         //                     )
//                         //                   ],
//                         //                 ),
//                         //               )
//                         //             ],
//                         //           )
//                         //         ],
//                         //       ),
//                         //     ],
//                         //   ),
//                         // ),
//                         // Other widgets...
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
