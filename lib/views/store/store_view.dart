import 'dart:math';

import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:app/common/widgets/images/t_circular_image.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/products/cart/cart/cart_menu_icon.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/enums.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/store/store_model.dart';
// import controller
import 'package:app/controllers/store/store_controller.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});
  @override
  Widget build(BuildContext context) {
    StoreController viewController = StoreController();
    return ChangeNotifierProvider<StoreModel>(
      create: (context) => StoreModel.instance(),
      child: Consumer<StoreModel>(builder: (context, viewModel, child) {
        return Scaffold(
          appBar: TAppBar(
            title: Text('Store'),
            actions: [
              TCartCounterIcon(
                iconColor: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // Search Bar
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        TSearchContainer(
                            text: "Search for products",
                            showBorder: true,
                            showBackground: true,
                            padding: EdgeInsets.zero),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        //featured brand
                        TSectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections / 1.5,
                        ),
                        //
                        TGidLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: TRoundedContainer(
                                  padding: EdgeInsets.all(TSizes.sm),
                                  showBorder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: TCircularImage(
                                          image: TImages.clothIcon,
                                          isNetworkImage: false,
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              THelperFunctions.isDarkMode(
                                                      context)
                                                  ? TColors.light
                                                  : TColors.dark,
                                        ),
                                      ),
                                      SizedBox(
                                        height: TSizes.spaceBtwItems / 2,
                                      ),
                                      //text
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TBrandTitleWithVerifiedIcon(
                                              title: 'aaa',
                                              brandTextSize: TextSizes.large,
                                            ),
                                            Text(
                                              '245 san pham',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })
                        
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    // Add your product list or grid here
                    Text('Product List Goes Here'),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
