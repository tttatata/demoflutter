import 'package:app/util/device/device_utility.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onSearch,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace), required this.text, this.ontap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final Function(String)? onSearch;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  GestureDetector(
      onTap: ontap,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
          child: Container(
            
            width: TDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(TSizes.md),
            decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: TColors.grey) : null,
            ),
            child: Row(
              children: [
                Icon(icon, color: TColors.darkGrey),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(text,style: Theme.of(context).textTheme.bodySmall,)
                
                // Thêm TextField vào đây
                // Expanded(
                //   child: TextField(
                //     focusNode: _focusNode,
                //     controller: _searchController,
                //     decoration: InputDecoration(
                //       hintText: lastSearch.isEmpty
                //           ? text
                //           : lastSearch, // Sử dụng giá trị tìm kiếm cuối cùng làm hintText
                //       border: InputBorder.none,
                //       contentPadding: EdgeInsets.zero,
                //     ),
                //     style: Theme.of(context).textTheme.bodySmall,
                //     onSubmitted: navigateToSearchScreen,
                //   ),
                // ),
              ],
            ),
          ),
       
      ),
    );
  }
}
