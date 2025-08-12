import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/products/ratings/rating_indicator.dart';

import 'package:app/util/constans/sizes.dart';
import 'package:app/views/product_reviews/components/rating_progress_indicator.dart';
import 'package:app/views/product_reviews/components/user_review_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/product_reviews/product_reviews_model.dart';
// import controller
import 'package:app/controllers/product_reviews/product_reviews_controller.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductReviewsController viewController = ProductReviewsController();
    return ChangeNotifierProvider<ProductReviewsModel>(
      create: (context) => ProductReviewsModel.instance(),
      child: Consumer<ProductReviewsModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
      appBar: const TAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: TSizes.spaceBtwItems),
              const ToverallProductRating(
                
              ),
              const TRatingBarIndicator(
                rating: 5,
              ),
              Text(
                '12,321',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Tạo danh sách đánh giá
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 650,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                 
                    
                      return const UserReviewCard();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
        );
            },
          ),
        );
      }
    }
  


    