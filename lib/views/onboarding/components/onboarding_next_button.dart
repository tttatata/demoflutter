
import 'package:app/controllers/onboarding/onboarding_controller.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/device/device_utility.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
           side: BorderSide(
            color: dark ? TColors.light : const Color.fromARGB(255, 82, 137, 255), // Màu viền tùy thuộc vào chế độ tối
            width: 2, // Độ dày của viền
          ),
          backgroundColor: dark ? const Color.fromARGB(255, 111, 126, 255) : const Color.fromARGB(255, 15, 191, 235),
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
