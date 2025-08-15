import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/appbar/tabbar.dart';
import 'package:app/common/widgets/brands/brand_card.dart';
import 'package:app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/all_brands/all_brands_view.dart';
import 'package:app/views/store/components/category_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: TAppBar(
              title: const Text('Store'),
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
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          // Search Bar
                          const SizedBox(
                            height: TSizes.spaceBtwItems,
                          ),
                          const TSearchContainer(
                              text: "Search for products",
                              showBorder: true,
                              showBackground: true,
                              padding: EdgeInsets.zero),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          //featured brand
                          TSectionHeading(
                            title: 'Featured Brands',
                            showActionButton: true,
                            onPressed: () =>
                                Get.to(() => const AllBrandsView()),
                          ),
                          const SizedBox(
                            height: TSizes.spaceBtwSections / 1.5,
                          ),
                          //
                          TGidLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return TBrandCard(
                                  showBorder: true,
                                  onTap: () {},
                                );
                              })
                        ],
                      ),
                    ),
                    bottom: const TTabBar(tabs: [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        text: 'Clothing',
                      ),
                      Tab(
                        text: 'Electronics',
                      ),
                      Tab(
                        text: 'Accessories',
                      ),
                    ]),
                  ),
                ];
              },
              body: const TabBarView(
                children: [
                  TCategoryTab(
                    images: [
                      TImages.productImage1,
                      TImages.productImage1,
                      TImages.productImage1,
                    ],
                  ),
                  TCategoryTab(
                    images: [
                      TImages.productImage1,
                      TImages.productImage1,
                      TImages.productImage1,
                    ],
                  ),
                  TCategoryTab(
                    images: [
                      TImages.productImage1,
                      TImages.productImage1,
                      TImages.productImage1,
                    ],
                  ),
                  TCategoryTab(
                    images: [
                      TImages.productImage1,
                      TImages.productImage1,
                      TImages.productImage1,
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
