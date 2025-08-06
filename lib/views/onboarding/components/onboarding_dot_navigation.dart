
import 'package:app/controllers/onboarding/onboarding_controller.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/device/device_utility.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        right: TSizes.defaultSpace,
        child: Center(
          child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ScrollingDotsEffect(
                activeDotColor: dark ? TColors.light : TColors.dark,
                ),
          ),
        ));
  }
}
