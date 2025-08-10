import 'package:app/common/widgets/brands/brand_show_case.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/product_cards/product_card_vertical.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //brands
            TBrandShowCase(images: images),
            TBrandShowCase(images: images),
            //product
            TSectionHeading(title: 'Your might like', onPressed: () {}),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            TGidLayout(itemCount: 4, itemBuilder: (_,index)=> const TProductCardVertical()),
             const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    ]);
  }
}
