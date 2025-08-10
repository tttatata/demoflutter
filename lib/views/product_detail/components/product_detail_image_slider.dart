// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/custom_shapes/curved_edges/curved_edgges_widget.dart';
import 'package:app/common/widgets/icons/t_circular_icon.dart';
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    Key? key,
    
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
  

    // bool isFavorite = user.wishList!.any((item) =>
    //     item['product']['_id'].toString() == widget.product.id.toString());

    // final ValueNotifier<String> _currentImageUrl =
    //     ValueNotifier(widget.product.images[0].url.toString());
    return TCurvedEdgetWidget(
      child: Container(
        color: darkMode ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            ValueListenableBuilder(
              valueListenable: ValueNotifier(TImages.promoBanner1),
              builder: (context, String imageUrl, child) {
                return const SizedBox(
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                    child: Center(
                      child: Image(image: AssetImage(TImages.onBoardingImage2)),
                    ),
                  ),
                );
              },
            ),
            //image slideer

            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    // Bọc TRoundedImage trong GestureDetector để xử lý sự kiện nhấn
                    return GestureDetector(
                      onTap: () {
                        // Cập nhật _currentImageUrl khi một hình ảnh nhỏ được nhấn
                       
                      },
                      child: TRoundedImage(
                        width: 80,
                        backgroundColor:
                            darkMode ? TColors.dark : TColors.white,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                        isNetworkImage: false,
                        imageUrl: TImages.google,
                      ),
                    );
                  },
                ),
              ),
            ),
//appBar i con
            TAppBar(
              actions: [
                Builder(
                  builder: (BuildContext context) {
                    return TCircularIcon(
                      onPressed: (){},
                      icon: Iconsax.heart5,
                      color:  Colors.pink ,
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
