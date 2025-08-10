
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    this.textColor = TColors.white,
    this.backgroundColor,
    required this.title,
    this.onTap,
    required this.image,
  });
  final Color textColor;
  final Color? backgroundColor;
  final String title;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: 
        Column(
            children: [
              Container(
                width: 56,
                height:56,
                padding: const EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                  color: backgroundColor ??
                      (THelperFunctions.isDarkMode(context)
                          ? TColors.black
                          : const Color.fromARGB(255, 102, 133, 236)),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: 
                   Image(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                      color: dark ? TColors.light : TColors.dark,
                    ),
                  
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
             
              SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        
      ),
    );
  }
}
