import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  // static const String routeName = '/category-deals';
  // final String category;
  const SubCategoriesScreen({
    Key? key,
    // required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'widget.category',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body:
          //  productList == null
          //     ?
          //     Center(
          //         child:
          //             CircularProgressIndicator()) // Hiển thị loader khi productList đang null
          //     : productList!.isEmpty
          //         ? Center(
          //             child: Text(
          //                 'Không có sản phẩm loại này')) // Hiển thị thông báo khi không có sản phẩm
          //         :
          SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TRoundedImage(
                width: double.infinity,
                
                imageUrl: TImages.banner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
           Column(children: [
            TSectionHeading(title: 'Sport shirt',onPressed: (){},),
             const SizedBox(height: TSizes.spaceBtwItems / 2 ,),
             SizedBox(
              height: 120,
               child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                separatorBuilder:(context,index) =>const SizedBox(width: TSizes.spaceBtwItems,),
                itemBuilder: (context,index) => const TProductCardHorizontal(),
               
               ),
             )
           ],)
            ],
          ),
        ),
      ),
    );
  }
}
