import 'package:app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:app/common/widgets/custom_shapes/curved_edges/curved_edgges_widget.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/product_cards/product_card_vertical.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/views/home/components/home_appbar.dart';
import 'package:app/views/home/components/home_categories.dart';
import 'package:app/views/home/components/promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/home/home_model.dart';
// import controller
import 'package:app/controllers/home/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    HomeController viewController = HomeController();
    return ChangeNotifierProvider<HomeModel>(
      create: (context) => HomeModel.instance(),
      child: Consumer<HomeModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const TPrimaryHeaderContainer(
                    child: Column(
                      children: [
                        //app bar tutorial
                        THomeAppBar(),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        //searchbar
                        TSearchContainer(text: "aaa"),
                        SizedBox(
                          height: TSizes.spaceBtwSections / 2,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: TSizes.defaultSpace),
                          child: Column(
                            children: [
                              TSectionHeading(
                                title: 'Popular Categories',
                                showActionButton: false,
                              ),
                              SizedBox(
                                height: TSizes.spaceBtwItems,
                              ),
                              THomeCategories(),
                              SizedBox(
                                height: TSizes.spaceBtwSections / 2,
                              ),

                              //
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // body
                  const Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace),
                    child: TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGidLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
