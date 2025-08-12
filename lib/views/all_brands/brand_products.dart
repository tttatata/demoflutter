
import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/brands/brand_card.dart';
import 'package:app/common/widgets/products/sortable/sortable_products.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections),
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
