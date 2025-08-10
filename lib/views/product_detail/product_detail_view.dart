import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/product_detail/components/product_attributes.dart';
import 'package:app/views/product_detail/components/product_detail_image_slider.dart';
import 'package:app/views/product_detail/components/product_meta_data.dart';
import 'package:app/views/product_detail/components/rating_share_widget.dart';
import 'package:app/views/product_detail/components/bottom_add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
// import model
import 'package:app/models/product_detail/product_detail_model.dart';
// import controller
import 'package:app/controllers/product_detail/product_detail_controller.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    ProductDetailController viewController = ProductDetailController();
    return ChangeNotifierProvider<ProductDetailModel>(
      create: (context) => ProductDetailModel.instance(),
      child: Consumer<ProductDetailModel>(builder: (context, viewModel, child) {
        return Scaffold(
          appBar: TAppBar(
            showBackArrow: true,
            title: Text(
              'Thông tin sản phẩm',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          // bottomNavigationBar: TBot,
      bottomNavigationBar: TBottomAddToCart(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ///products image slider
                const TProductImageSlider(),

                ///////product detailer
                Padding(
                  padding: const EdgeInsets.only(
                      right: TSizes.defaultSpace,
                      left: TSizes.defaultSpace,
                      bottom: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //rating and share
                      const TRatingAndShare(),
                      //p
                      const TProductMetaData(),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      ///attributes
                      const TProductAttributes(),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      //checkout
                      ElevatedButton(onPressed: () {}, child: Text('Checkout')),

                      const TSectionHeading(
                        title: 'Mô tả',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      ReadMoreText(
                       'A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.',
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimCollapsedText: '...xem thêm',
                        trimExpandedText: ' show less',
                        moreStyle:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                        lessStyle:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      //review
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const TSectionHeading(
                            title:
                                'Đánh giá 199)', // Cập nhật số lượ
                            showActionButton: false,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Iconsax.arrow_right_3,
                                size: 18,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
