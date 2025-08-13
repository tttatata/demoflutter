import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/brands/brand_card.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/views/all_brands/brand_products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/all_brands/all_brands_model.dart';
// import controller
import 'package:app/controllers/all_brands/all_brands_controller.dart';

class AllBrandsView extends StatelessWidget {
  const AllBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    AllBrandsController viewController = AllBrandsController();
    return ChangeNotifierProvider<AllBrandsModel>(
      create: (context) => AllBrandsModel.instance(),
      child: Consumer<AllBrandsModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: const TAppBar(
              title: Text('Thương hiệu'),
              showBackArrow: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TSectionHeading(title: 'Brands',showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    //brands
                    TGidLayout(
                      itemCount: 11,
                      mainAxisExtent: 88,
                      itemBuilder: (context, index) => 
                    TBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const BrandProducts()),
                      ),
                      ),
                      
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
