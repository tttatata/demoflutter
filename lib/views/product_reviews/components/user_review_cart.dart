
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/images/t_circular_image.dart';
import 'package:app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class UserReviewCard extends StatelessWidget {
  // final Reviews_Product review;

  const UserReviewCard({super.key,
  //  required this.review
   });
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const TCircularImage(
                  image:
                  //  review.user['avatar']?.isEmpty ?? true
                  //     ? 
                      TImages.user
                      // : review.user['avatar']['url'].toString()
                      ,
                  // isNetworkImage:
                  //     review.user['avatar']?.isEmpty ?? true ? false : true,
                  height: 50,
                  width: 50,
                  padding: 5,
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'review.user[]',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        //review
        const Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('12/14/2023',
              ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const Align(
          alignment: Alignment.centerLeft,
          child: ReadMoreText(
            'review.comment.toString()',
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimCollapsedText: '...Xem thêm',
            trimExpandedText: ' show less',
            moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary,
            ),
            lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary,
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// company review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey: TColors.grey,
child: Padding(padding: const EdgeInsetsGeometry.all(TSizes.md),
child: Column(
  children: [Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
    children: [
      Text('T`s Store',style:Theme.of(context).textTheme.bodyLarge),
         Text('02/03/2025',style:Theme.of(context).textTheme.bodyMedium),
         
    ],
  ),
   const SizedBox(height: TSizes.spaceBtwItems),
        const Align(
          alignment: Alignment.centerLeft,
          child: ReadMoreText(
            'review.comment.toString()',
            trimMode: TrimMode.Line,
            trimLines: 2,
            colorClickableText: Colors.pink,
            trimCollapsedText: '...Xem thêm',
            trimExpandedText: ' show less',
            moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary,
            ),
            lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary,
            ),
          ),),
  ],
  
),),
        ),

        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
