// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TSinglePayment extends StatelessWidget {
  const TSinglePayment({
    Key? key,
    required this.namePaymentMethod,
    required this.paymentMethodIcon,
    // required this.paymentMethodIcons, // Thêm tham số này
    this.isSelected = false,
  }) : super(key: key);

  final String namePaymentMethod;
  final IconData paymentMethodIcon;
  final bool isSelected;
  // final Map<String, IconData> paymentMethodIcons; // T
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: isSelected
          ? const Color.fromARGB(255, 0, 132, 255).withOpacity(0.5)
          : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : dark
              ? TColors.darkGrey
              : const Color.fromARGB(255, 4, 1, 160),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(isSelected ? Iconsax.tick_circle5 : null,
                color: isSelected
                    ? dark
                        ? TColors.light
                        : TColors.dark
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              Row(
                children: [
                  Icon(paymentMethodIcon),
                  const SizedBox(
                    width: TSizes.sm / 2,
                  ),
                  Text(namePaymentMethod,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleMedium),
                ],
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
