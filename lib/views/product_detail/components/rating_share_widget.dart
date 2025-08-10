
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TRatingAndShare extends StatelessWidget {
 
  const TRatingAndShare({
    super.key,
    // required this.product,
  });

  @override
  Widget build(BuildContext context) {
    // double sumRatings = 0;
    // int totalReviews = 0;

    // // Tính toán đánh giá trung bình
    // double averageRating = 0; // Khai báo biến ở đây để có thể sử dụng sau này

    // if (product.reviews != null && product.reviews!.isNotEmpty) {
    //   product.reviews!.forEach((review) {
    //     sumRatings += review.rating ?? 0;
    //     totalReviews++;
    //   });

    //   if (totalReviews > 0) {
    //     averageRating = sumRatings / totalReviews;
    //   }
    // }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //ratting
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(
                    text: '100',
                  )
                ],
              ),
            )
          ],
        ),
        //share button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: TSizes.iconMd,
            ))
      ],
    );
  }
}
