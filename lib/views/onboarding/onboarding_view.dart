import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/views/onboarding/components/onboarding_dot_navigation.dart';
import 'package:app/views/onboarding/components/onboarding_next_button.dart';
import 'package:app/views/onboarding/components/onboarding_page.dart';
import 'package:app/views/onboarding/components/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import controller
import 'package:app/controllers/onboarding/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        ///Horizontal Scrollable Pages
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: TImages.tOnBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: TImages.tOnBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: TImages.tOnBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3,
            ),
          ],
        ),

        ///Skip Button
        const OnBoardingSkip(),

        ///Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        ///Circular Button
        const OnBoardingNextButton()
      ],
    ));
  }
}
