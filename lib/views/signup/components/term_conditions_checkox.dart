import 'package:app/controllers/signup/signup_controller.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TTermsAndCondititionCheckbox extends StatelessWidget {
  const TTermsAndCondititionCheckbox({
    super.key,
    // required this.privatePolicy,
    required this.dark,
  });

  // final RxBool privatePolicy;
  final bool dark;

  @override
  Widget build(BuildContext context) {
      final controller = SignupController.instance;
          final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 25,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) =>
                    controller.privacyPolicy.value = !controller.privacyPolicy.value))),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: TTexts.iAgreeTo,
              style: Theme.of(context).textTheme.labelLarge),
          TextSpan(
              text: ' ', style: Theme.of(context).textTheme.labelLarge),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? TColors.white : TColors.primary,
                  )),
        ]))
      ],
    );
  }
}
