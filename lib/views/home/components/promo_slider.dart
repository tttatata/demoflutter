
import 'package:app/common/widgets/images/t_rounded_image.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

import '../../../controllers/home/home_controller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            viewportFraction: 1,
          ),
          items: banners
              .map((url) => TRoundedImage(
                    imageUrl: url,
                  ))
              .toList(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    margin: EdgeInsets.only(right: 10),
                    width: 20,
                    height: 4,
                    backgroundColor:
                     controller.carousalCurrentIndex.value == i ? TColors.primary: TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
